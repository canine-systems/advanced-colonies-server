# advanced-colonies-server-$VERSION-$REVISION.deb
VERSION != jq -r '.version' pakku.json
REVISION := 1

NEOFORGE_VERSION := 21.1.218

SYSTEMD_FILES := build/deb/etc/systemd/system/

SERVER_DIR := build/deb/opt/minecraft/server
DEB_FILE := dist/advanced_colonies-${VERSION}-${REVISION}.deb

all: dist

server: ${SERVER_DIR}
	@echo
	@echo
	@echo "(Theoretically) functional server is available at:"
	@echo "  $<"

run: ${SERVER_DIR}
	echo eula=true > ${SERVER_DIR}/eula.txt
	cd ${SERVER_DIR} && java @user_jvm_args.txt -Xmx5G -Xms5G @libraries/net/neoforged/neoforge/21.1.218/unix_args.txt nogui

dist: dist/advanced-colonies-serverpack.zip dist/mods.md dist/bootstrap-root.sh dist/bootstrap-minecraft.sh

.cache/neoforge-installer.jar:
	mkdir -p $(@D)
	wget -O $@ "https://maven.neoforged.net/releases/net/neoforged/neoforge/${NEOFORGE_VERSION}/neoforge-${NEOFORGE_VERSION}-installer.jar"

${SYSTEMD_FILES}: packaging/systemd/minecraft.service packaging/systemd/sync-map.service packaging/systemd/sync-map.timer
	mkdir -p $@
	cp $^ $@

${SERVER_DIR}/run.sh: .cache/neoforge-installer.jar
	mkdir -p $(@D)
	java -jar $< --install-server $(@D)

${SERVER_DIR}/mods: dist/advanced-colonies-serverpack.zip
	mkdir -p $(@D)
	unzip -o dist/advanced-colonies-serverpack.zip -d $(@D)

${SERVER_DIR}: ${SERVER_DIR}/run.sh ${SERVER_DIR}/mods ${SYSTEMD_FILES}

deb ${DEB_FILE}: ${SERVER_DIR}
	rm -rf build/deb/debian
	cp -r packaging/debian build/deb/debian
	cd build/deb && debuild

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

veryclean: clean
	rm -rf .cache

.PHONY: all build clean deb server run
