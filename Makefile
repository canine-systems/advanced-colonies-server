# advanced-colonies-$VERSION-$REVISION.deb
VERSION != jq -r '.version' pakku.json
REVISION := 1

NEOFORGE_VERSION := 21.1.218

PROFILE_SYSTEMD_FIXES := build/deb/etc/profile.d/99-user-systemd-fixes.sh

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
	cd ${SERVER_DIR} && java @user_jvm_args.txt -Xmx8G -Xms8G @libraries/net/neoforged/neoforge/21.1.218/unix_args.txt nogui

dist: dist/advanced-colonies-serverpack.zip dist/mods.md dist/bootstrap-root.sh dist/bootstrap-minecraft.sh

build/cache/neoforge-installer.jar:
	mkdir -p build/cache/
	wget -O $@ "https://maven.neoforged.net/releases/net/neoforged/neoforge/${NEOFORGE_VERSION}/neoforge-${NEOFORGE_VERSION}-installer.jar"

${SERVER_DIR}/run.sh: build/cache/neoforge-installer.jar
	mkdir -p $(@D)
	java -jar build/cache/neoforge-installer.jar --install-server $(@D)

${SERVER_DIR}/maintenance: dist/advanced-colonies-serverpack.zip
	mkdir -p $(@D)
	unzip -o dist/advanced-colonies-serverpack.zip -d $(@D)

${SERVER_DIR}: ${SERVER_DIR}/run.sh ${SERVER_DIR}/maintenance

${PROFILE_SYSTEMD_FIXES}:
	mkdir -p $(@D)
	echo 'test -z "$$XDG_RUNTIME_DIR" && export XDG_RUNTIME_DIR=/run/user/$$UID' > $@
	echo 'test -z "$$XDG_RUNTIME_DIR" && export DBUS_SESSION_BUS_ADDRESS=/run/user/$$UID/bus' >> $@

deb ${DEB_FILE}: ${SERVER_DIR} ${PROFILE_SYSTEMD_FIXES}
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
	# Remove everything but caches.
	rm -rf build/deb build/modrinth build/serverpack dist

veryclean:
	rm -rf build dist

.PHONY: all build clean systemd-units server
