# advanced-colonies-server-$VERSION-$REVISION.deb
VERSION ?= $(shell jq -r '.version' pakku.json).0
REVISION := 1

NEOFORGE_VERSION := 21.1.218

PKG_NAME := advanced-colonies-server_${VERSION}

TAR_PKG_FOLDER := build/tar/${PKG_NAME}
DEB_PKG_FOLDER := build/deb/${PKG_NAME}-${REVISION}
TAR_PKG_FILE_NAME := ${PKG_NAME}.tar.gz
TAR_PKG_FILE_PATH := build/tar/${TAR_PKG_FILE_NAME}

SYSTEMD_FILES := ${TAR_PKG_FOLDER}/etc/systemd/system/

SERVER_DIR := ${TAR_PKG_FOLDER}/opt/minecraft/server
#DEB_FILE := dist/${PKG_NAME}-${REVISION}.deb
DEB_FILE := advanced-colonies-server.deb

all: dist

server: ${SERVER_DIR}
	@echo
	@echo
	@echo "(Theoretically) functional server is available at:"
	@echo "  $<"

run: ${SERVER_DIR}
	echo eula=true > ${SERVER_DIR}/eula.txt
	cd ${SERVER_DIR} && java @user_jvm_args.txt -Xmx5G -Xms5G @libraries/net/neoforged/neoforge/21.1.218/unix_args.txt nogui

dist: dist/advanced-colonies-serverpack.zip dist/mods.md ${DEB_FILE}

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

${TAR_PKG_FILE_PATH}: ${SERVER_DIR}
	cd build/tar && tar czvf ${TAR_PKG_FILE_NAME} ${PKG_NAME}/

deb ${DEB_FILE}: ${TAR_PKG_FILE_PATH}
	mkdir -p build/deb
	cd build/deb && tar xzf ../../${TAR_PKG_FILE_PATH}
	mv build/deb/advanced-colonies-server_${VERSION} ${DEB_PKG_FOLDER}
	cp -r packaging/debian ${DEB_PKG_FOLDER}/debian
	sed -i -e "s/{VERSION}/${VERSION}/" -e "s/{REVISION}/${REVISION}/" ${DEB_PKG_FOLDER}/debian/changelog
	cd ${DEB_PKG_FOLDER} && debuild --no-tgz-check --no-lintian -- binary
	cp build/deb/${PKG_NAME}-${REVISION}_*.deb ${DEB_FILE}

dist/mods.md:
	mkdir -p dist
	./bin/mod-list.py > dist/mods.md

dist/advanced-colonies-serverpack.zip:
	mkdir -p dist
	./bin/pakku fetch
	./bin/pakku export
	mv "build/serverpack/Advanced Colonies-3.zip" "dist/advanced-colonies-serverpack.zip"

clean:
	rm -rf build dist

veryclean: clean
	rm -rf .cache

.PHONY: all build clean deb server run
