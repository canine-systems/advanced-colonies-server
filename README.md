# Advanced Colonies (Minecraft mod)

Server build for a Minecraft modpack set up using [Pakku](https://juraj-hrivnak.github.io/Pakku/).

If you're not kayila or duckinator, you probably want the client modpack: [canine-systems/advanced-colonies](https://github.com/canine-systems/advanced-colonies).

## Server Setup

This has only been tested on a fresh Debian 13 installation.

Initial setup:

```
wget https://github.com/canine-systems/advanced-colonies-server/releases/latest/download/advanced-colonies-server.deb && apt install ./advanced-colonies-server.deb
```

Then:
1. edit `/opt/minecraft/server/eula.txt` to approve Minecraft's EULA.
2. copy the generated ssh key for the `minecraft` user to map.canine.systems.
3. Create a DigitalOcean API key with the following scopes, and put it in `/etc/advanced-colonies/digital-ocean-token.txt`:
  - Create Access: domain
  - Read Access: domain
  - Update Access: domain
4. Create a Discord bot according to the docs for the [Discord & Chat Images](https://modrinth.com/mod/discord-chat-connect) mod, then:
  - put the Discord bot token in: `/etc/advanced-colonies/discord-bot-token.txt`
  - put the Discord channel ID in: `/etc/advanced-colonies/discord-channel-id.txt`
  - put the Minecraft server name in `/etc/advanced-colonies/discord-mc-server-name.txt`

Maintenance:

- `ac-update`: Wait for an update to become available, install it, and restart the Minecraft server
- `ac-pause`: Stop the Minecraft server (e.g. for maintenance)
- `ac-unpause`: Allow the Minecraft server to start as normal (e.g. after maintenance is done)

## Manual In-Game Steps

Currently, you have to manually place the spawn building by doing the following:

1. get a empty schematic + schematic table
2. use table to load `elisium_spawn_v2.nbt` to the schematic
3. position schematic so you're at 27, 76, 121 when standing on the corner of the purple tree in the back-left

Then, you need to disable insomnia/phantoms with `/gamerule doInsomnia false`.

## Development

`./bin/pakku` is your friend.
