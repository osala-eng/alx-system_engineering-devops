#!/usr/bin/python3
"""
Query titles of top ten posts of a given subreddit
"""
import requests


def top_ten(subreddit):
    """
        Print top ten titles for a given subreddit or None
        if invalid subreddit is given
    """
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'My User Agent 1.0'})

    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    r = requests.get(url, headers=headers).json()
    top_ten = r.get('data', {}).get('children', [])
    if not top_ten:
        print(None)
    for title in top_ten:
        print(title.get('data').get('title'))
