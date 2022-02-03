test:
	sed -i 's/def effective_path/def effective_path\nreturn nil/' /usr/local/Homebrew/Library/Homebrew/extend/ENV/shared.rb
	sed -i 's/self["HOMEBREW_ARCHFLAGS"] = ""/self["HOMEBREW_ARCHFLAGS"] = "-arch x86_64 -arch arm64"\nself["MACOSX_DEPLOYMENT_TARGET"] = "10.11"/' /usr/local/Homebrew/Library/Homebrew/extend/ENV/super.rb
	brew reinstall lua --build-from-source
	file $(shell which lua)
