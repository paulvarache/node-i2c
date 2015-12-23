# build node-i2c executable when user executes "make"
install:
	echo "Building node-i2c for arch ${npm_config_arch}"
	npm install
	node-gyp configure
	node-gyp build
# remove build folder when user executes "make clean"
clean:
	rm -rf node_modules build
