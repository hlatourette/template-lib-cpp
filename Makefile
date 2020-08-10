.PHONY: all build clean install test

all: clean build test

build:
	mkdir -p build && cd build && cmake .. -DCMAKE_INSTALL_PREFIX=/ && cmake --build .

clean:
	rm -rf build

install:
	cd build && cmake --build . --target install

test:
	cd build && ctest --verbose