# advanced-colonies-$VERSION-$REVISION.deb
VERSION != jq -r '.version' pakku.json
REVISION := 1

NEOFORGE_VERSION := 21.1.218

SERVER_DIR := build/deb/opt/minecraft/server/
DEB_FILE := dist/advanced_colonies-${VERSION}-${REVISION}.deb

all: dist

server: ${SERVER_DIR}
	@echo
	@echo
	@echo "(Theoretically) functional server is available at:"
	@echo "  ${SERVER_DIR}"

deb: ${DEB_FILE}

dist: dist/advanced-colonies-serverpack.zip dist/mods.md dist/bootstrap-root.sh dist/bootstrap-minecraft.sh

build/deb/opt/minecraft/server/%: maintenance/systemd/%
	mkdir -p build/deb/opt/minecraft/server/.config/systemd/user/
	ln -s /opt/minecraft/server/maintenance/systemd/$* build/deb/opt/minecraft/server/.config/systemd/user/$*

systemd-units: build/deb/opt/minecraft/server/minecraft.service build/deb/opt/minecraft/server/sync-map.service build/deb/opt/minecraft/server/sync-map.timer
	mkdir -p build/deb/opt/minecraft/.config/systemd/user/default.target.wants/
	mkdir -p build/deb/opt/minecraft/.config/systemd/user/timers.target.wants/
	ln -s /opt/minecraft/server/.config/systemd/user/minecraft.service build/deb/opt/minecraft/.config/systemd/user/default.target.wants/minecraft.service
	ln -s /opt/minecraft/server/.config/systemd/user/sync-map.timer build/deb/opt/minecraft/.config/systemd/user/timers.target.wants/sync-map.timer

build/deb/neoforge-installer.jar:
	mkdir -p build/deb/
	wget -O $@ "https://maven.neoforged.net/releases/net/neoforged/neoforge/${NEOFORGE_VERSION}/neoforge-${NEOFORGE_VERSION}-installer.jar"

${SERVER_DIR}: dist/advanced-colonies-serverpack.zip build/deb/neoforge-installer.jar systemd-units
	mkdir -p ${SERVER_DIR}
	java -jar build/deb/neoforge-installer.jar --install-server ${SERVER_DIR}
	unzip -o dist/advanced-colonies-serverpack.zip -d ${SERVER_DIR}

${DEB_FILE}: ${SERVER_DIR}
	echo "TODO -- finish generating the .deb file"

dist/mods.md:
	mkdir -p dist
	./bin/mod-list.py > dist/mods.md

dist/advanced-colonies-serverpack.zip:
	mkdir -p dist
	./bin/pakku fetch
	./bin/pakku export
	mv "build/serverpack/Advanced Colonies-3.0.zip" "dist/advanced-colonies-serverpack.zip"

dist/bootstrap-root.sh:
	cp bootstrap/bootstrap-root.sh dist/

dist/bootstrap-minecraft.sh:
	cp bootstrap/bootstrap-minecraft.sh dist/

clean:
	rm -rf build dist

.PHONY: all build clean systemd-units server
