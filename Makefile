# advanced-colonies-$VERSION-$REVISION.deb
VERSION != jq -r '.version' pakku.json
REVISION := 1

NEOFORGE_VERSION := 21.1.218

SERVER_DIR := build/deb/opt/minecraft/server
DEB_FILE := dist/advanced_colonies-${VERSION}-${REVISION}.deb

all: dist

server: ${SERVER_DIR}
	@echo
	@echo
	@echo "(Theoretically) functional server is available at:"
	@echo "  ${SERVER_DIR}"

deb: ${DEB_FILE}

dist: dist/advanced-colonies-serverpack.zip dist/mods.md dist/bootstrap-root.sh dist/bootstrap-minecraft.sh

build/cache/neoforge-installer.jar:
	mkdir -p build/cache/
	wget -O $@ "https://maven.neoforged.net/releases/net/neoforged/neoforge/${NEOFORGE_VERSION}/neoforge-${NEOFORGE_VERSION}-installer.jar"

${SERVER_DIR}/run.sh: build/cache/neoforge-installer.jar
	mkdir -p ${SERVER_DIR}
	java -jar build/cache/neoforge-installer.jar --install-server ${SERVER_DIR}

${SERVER_DIR}/maintenance: dist/advanced-colonies-serverpack.zip
	mkdir -p ${SERVER_DIR}
	unzip -o dist/advanced-colonies-serverpack.zip -d ${SERVER_DIR}

${SERVER_DIR}: ${SERVER_DIR}/run.sh ${SERVER_DIR}/maintenance

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
