test:
	mkdir -p zsh
	cp -r "$(shell brew --prefix zsh)/bin/"* zsh/
	zsh/zsh --version

clean:
	rm -rf zsh
