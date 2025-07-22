SHELL := /bin/zsh

.PHONY: all help demo

all: demo

help:
	@echo "Please use \`make <target>' where <target> is one of:"
	@echo "  demo             to build a screencast demo of the project"
	@echo "  help             to show this help message"
	@echo "  clean            to cleanup package manager caches"

demo:
	@svg-term --command="bash doc/screencast.sh" \
		--out doc/demo.svg --width=50 --padding=10
	@sed -i '' 's/<text/<text font-size="1.67"/g' doc/demo.svg
