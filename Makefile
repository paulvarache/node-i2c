# build node-i2c executable when user executes "make"
install:
	export npm_config_arch=mips
	npm install
	node-gyp configure
	node-gyp build
# remove build folder when user executes "make clean"
clean:
	rm -rf node_modules build
