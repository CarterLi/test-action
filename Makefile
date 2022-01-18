test:
	mkdir -p test
	cp -r "$(shell brew --prefix make)/bin/"* test/
	test/gmake --version

clean:
	rm -rf test
