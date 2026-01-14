#!/usr/bin/env python3

from datetime import datetime
from itertools import pairwise
import json
import sys
from time import sleep
from textwrap import dedent
from urllib.request import urlopen

url = "https://api.github.com/repos/canine-systems/advanced-colonies-server/releases"

def format_release(current, previous):
    url = current["html_url"]
    current_tag = current["tag_name"]

    changes = commits_between(previous["tag_name"], current_tag)

    date = datetime.strptime(current["published_at"], "%Y-%m-%dT%H:%M:%SZ").strftime("%a, %d %b %Y %H:%M:%S %z")

    return dedent(f"""\
    advanced-colonies-server ({current_tag}) UNRELEASED;

     {"\n     ".join(changes)}

     -- Ellen Dash <ellen@duckinator.net> {date}
    """)

def commits_between(old, new):
    url = f"https://api.github.com/repos/canine-systems/advanced-colonies-server/compare/{old}...{new}"
    with urlopen(url) as f:
        data = json.load(f)
    commits = data["commits"]
    return [f"* {commit["commit"]["message"]}" for commit in commits]


with urlopen(url) as f:
    data = json.load(f)

releases = [format_release(curr, prev) for curr, prev in pairwise(data)]

print("\n\n".join(releases))
