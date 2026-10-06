#!/usr/bin/env python3
"""Read a public webpage in visible Chromium; emit text for agent review."""

import argparse
import json
import sys
from urllib.parse import urlsplit


def extract(page, status):
    title = page.title()
    text = page.locator("body").inner_text().strip()
    if status is not None and status >= 400:
        raise ValueError(f"HTTP {status}: {title}")
    blocked_titles = ("attention required!", "just a moment", "access denied")
    if title.lower().startswith(blocked_titles):
        raise ValueError(f"Browser returned an access challenge: {title}")
    if not text:
        raise ValueError("Page returned no readable text")
    return {
        "final_url": page.url,
        "title": title,
        "http_status": status,
        "text": text,
        "content_review_required": True,
    }


def read_webpage(url):
    parsed = urlsplit(url)
    if parsed.scheme not in ("http", "https") or not parsed.hostname:
        raise ValueError("Provide an HTTP or HTTPS URL")
    if parsed.username or parsed.password:
        raise ValueError("Credentials in URLs are not supported")
    from playwright.sync_api import sync_playwright

    with sync_playwright() as playwright:
        # launch() creates a disposable profile, separate from the user's browser.
        browser = playwright.chromium.launch(headless=False)
        try:
            page = browser.new_page(accept_downloads=False)
            page.set_default_timeout(30000)
            response = page.goto(url, wait_until="domcontentloaded")
            page.locator("body").wait_for(state="visible")
            result = extract(page, response.status if response else None)
            result["requested_url"] = url
            return result
        finally:
            browser.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("url")
    args = parser.parse_args()
    try:
        result = read_webpage(args.url)
    except Exception as error:
        print(json.dumps({"error": str(error)}, ensure_ascii=False), file=sys.stderr)
        return 1
    print(json.dumps(result, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main())
