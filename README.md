# Advanced Colonies (Minecraft mod)

Server build for a Minecraft modpack set up using [Pakku](https://juraj-hrivnak.github.io/Pakku/).

If you're not kayila or duckinator, you probably want the client modpack: [canine-systems/advanced-colonies](https://github.com/canine-systems/advanced-colonies).

## Server Setup

This has only been tested on a fresh Debian 13 installation.

Initial setup:

```
wget https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/advanced-colonies-server.deb && apt install ./advanced-colonies-server.deb
```

Maintenance:

- `ac-update`: Wait for an update to become available, install it, and restart the Minecraft server
- `ac-pause`: Stop the Minecraft server (e.g. for maintenance)
- `ac-unpause`: Allow the Minecraft server to start as normal (e.g. after maintenance is done)

## Manual In-Game Steps

Currently, you have to manually place the spawn building by doing the following:

1. get a empty schematic + schematic table
2. use table to load `elisium_spawn.nbt` to the schematic
3. position schematic so you're at -197, 65, 303 when standing on the corner of the bridge
4. extend the bridge + support pillars as needed


## Development

`./bin/pakku` is your friend.
