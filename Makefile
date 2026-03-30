# advanced-colonies-server-$VERSION-$REVISION.deb
VERSION ?= $(shell jq -r '.version' pakku.json).0
REVISION := 1

NEOFORGE_VERSION := 21.1.216
LEGO_VERSION := v4.31.0

# -----------------------------------------------

PKG_NAME := advanced-colonies-server_${VERSION}

PRISTINE := build/pristine
LEGO_FILE := ${PRISTINE}/opt/bin/lego
SYSTEMD_FILES := ${PRISTINE}/etc/systemd/system/
SERVER_DIR := ${PRISTINE}/opt/minecraft/server
BIN := ${PRISTINE}/opt/bin
PROFILE_OPT_BIN := ${PRISTINE}/etc/profile.d/99-opt-bin.sh

LIVE_DIR := build/live
LIVE_SERVER_DIR := ${LIVE_DIR}/opt/minecraft/server

DEB_PKG_FOLDER := build/deb/${PKG_NAME}-${REVISION}
DEB_FILE := dist/advanced-colonies-server.deb

# -----------------------------------------------

all: dist

server: ${SERVER_DIR}
	@printf "\n\nServer is available at:"
	@echo "  $<"

${SERVER_DIR}/run.sh: .cache/neoforge-installer.jar
	mkdir -p $(@D)
	java -jar $< --install-server $(@D)

${SERVER_DIR}/mods: dist/advanced-colonies-serverpack.zip
	mkdir -p $(@D)
	unzip -o dist/advanced-colonies-serverpack.zip -d $(@D)

${SERVER_DIR}: ${SERVER_DIR}/run.sh ${SERVER_DIR}/mods

${BIN}/%: packaging/bin/%
	mkdir -p ${BIN}
	cp $< $@
	chmod +x $@

${PROFILE_OPT_BIN}:
	mkdir -p $(@D)
	echo '[[ ":$$PATH:" == *":/opt/bin:"* ]] || export PATH=$$PATH:/opt/bin' > $@

${BIN}: ${BIN}/ac-do-update ${BIN}/ac-sync-map ${BIN}/ac-lan-broadcast ${BIN}/ac-update ${BIN}/ac-pause ${BIN}/ac-unpause

${PRISTINE}: ${SERVER_DIR} ${SYSTEMD_FILES} ${LEGO_FILE} ${PROFILE_OPT_BIN} ${BIN} ${DEATHWATCH_JAR}

pristine: ${PRISTINE}

${LIVE_DIR}: ${PRISTINE}
	cp -r $< $@

run: ${LIVE_DIR}
	echo eula=true > ${LIVE_SERVER_DIR}/eula.txt
	cd ${LIVE_SERVER_DIR} && java @user_jvm_args.txt -Xmx5G -Xms5G @libraries/net/neoforged/neoforge/21.1.216/unix_args.txt nogui ||:

run-offline: ${LIVE_DIR}
	sed -i.bak -e 's/online-mode=.*$$/online-mode=false/' \
		-e 's/white-list=.*$$/white-list=false/' \
		-e 's/enforce-whitelist=.*$$/enforce-whitelist=false/' ${LIVE_SERVER_DIR}/server.properties
	$(MAKE) run
	mv ${LIVE_SERVER_DIR}/server.properties.bak ${LIVE_SERVER_DIR}/server.properties

.cache/neoforge-installer.jar:
	mkdir -p $(@D)
	wget -O $@ "https://maven.neoforged.net/releases/net/neoforged/neoforge/${NEOFORGE_VERSION}/neoforge-${NEOFORGE_VERSION}-installer.jar"

.cache/lego.tar.gz:
	mkdir -p $(@D)
	wget -O $@ "https://github.com/go-acme/lego/releases/download/${LEGO_VERSION}/lego_${LEGO_VERSION}_linux_amd64.tar.gz"

.cache/lego: .cache/lego.tar.gz
	cd .cache && tar xzf lego.tar.gz lego && touch lego

cache: .cache/neoforge-installer.jar .cache/lego

${LEGO_FILE}: .cache/lego
	mkdir -p $(@D)
	cp $< $@
	chmod +x $@

${SYSTEMD_FILES}: packaging/systemd/*.service packaging/systemd/*.timer
	mkdir -p $@
	cp $^ $@

build/deb: ${PRISTINE} packaging/debian/*
	mkdir -p $@
	cp -r ${PRISTINE} ${DEB_PKG_FOLDER}
	cp -r packaging/debian ${DEB_PKG_FOLDER}/debian
	sed -i -e "s/{VERSION}/${VERSION}/" -e "s/{REVISION}/${REVISION}/" ${DEB_PKG_FOLDER}/debian/changelog

${DEB_FILE}: build/deb
	cd ${DEB_PKG_FOLDER} && env DEB_BUILD_OPTIONS=nostrip debuild --no-tgz-check --no-lintian -- binary
	cp build/deb/${PKG_NAME}-${REVISION}_*.deb ${DEB_FILE}

deb: ${DEB_FILE}

dist/mods.md:
	mkdir -p $(@D)
	./bin/mod-list.py > $@

mods: pakku.json pakku-lock.json config/* config/*/* config/*/*/* scripts/* squaremap/*
	./bin/pakku fetch

dist/advanced-colonies-serverpack.zip: mods
	./bin/pakku export
	mkdir -p dist
	mv "build/serverpack/Advanced Colonies-3.zip" "dist/advanced-colonies-serverpack.zip"

dist: dist/mods.md ${DEB_FILE}

clean:
	rm -rf build dist *.log

veryclean: clean
	rm -rf .cache mods datapacks resourcepacks

.PHONY: all build cache clean deb pristine server run run-offline
