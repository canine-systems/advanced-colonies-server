all: dist

dist/mods.md:
	mkdir -p dist
	./bin/mod-list.py > dist/mods.md

dist/advanced-colonies-serverpack.zip:
	mkdir -p dist
	./bin/pakku fetch
	./bin/pakku export
	mv "build/serverpack/Advanced Colonies-2.0.zip" "dist/advanced-colonies-serverpack.zip"

dist: dist/advanced-colonies-serverpack.zip dist/mods.md

clean:
	rm -rf build dist

.PHONY: all build clean
