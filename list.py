#!/usr/bin/env python3

import json

with open("pakku-lock.json") as f:
    data = json.load(f)

def cf(slug):
    return f"https://www.curseforge.com/minecraft/mc-mods/{slug}"

def mr(slug):
    return f"https://modrinth.com/mod/{slug}"

def name_and_link(proj):
    name = proj["name"]
    slug = proj["slug"]

    if "curseforge" in slug.keys():
        return (name["curseforge"], cf(slug["curseforge"]), "cf")
    else:
        return (name["modrinth"], mr(slug["modrinth"]), "mr")

projects = data["projects"]
mods = [name_and_link(proj) for proj in projects]

print("Current mods:")
for (name, url, abbr) in mods:
    print(f"- ({abbr}) [{name}]({url})")
