#!/usr/bin/env python3

from datetime import datetime
from itertools import pairwise
import json
import sys
from time import sleep
from urllib.request import urlopen

def commits_between(old, new):
    url = f"https://api.github.com/repos/canine-systems/advanced-colonies-server/compare/{old}...{new}"
    with urlopen(url) as f:
        data = json.load(f)
    commits = data["commits"]
    return [f"  * {commit["commit"]["message"]}" for commit in commits]

def last_tag():
    with urlopen("https://api.github.com/repos/canine-systems/advanced-colonies-server/releases") as f:
        return json.load(f)[0]["tag_name"]

if sys.argv[1].split(".")[1] == 0:
    changes = ["  * not with this changelog"]
else:
    version = sys.argv[1]
    date = datetime.now().strftime("%a, %d %b %Y %H:%M:%S %z")
    changes = commits_between(last_tag(), version)

print(f"""\
advanced-colonies-server ({version}) UNRELEASED; urgency=medium

{"\n\n".join(changes)}

 -- Ellen Dash <ellen@duckinator.net>  {date}
""")
