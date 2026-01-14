#!/usr/bin/env python3

import socket
import time

motd = "Canine Colonies (local)"
port = "25565"

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)

print("Broadcasting Minecraft servers to LAN")

while 1:
    sock.sendto(f"[MOTD]{motd}[/MOTD][AD]{port}[/AD]".encode('UTF-8'),
                ("255.255.255.255", 4445))
    time.sleep(1.5)
