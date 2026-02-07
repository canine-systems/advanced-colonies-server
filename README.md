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

## Development

`./bin/pakku` is your friend.
