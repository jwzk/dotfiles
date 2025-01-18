##
## Commands
##

sync: ## Sync files
	[ -f ~/.gitconfig ] || ln -s $(PWD)/src/.gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/src/.gitignore_global ~/.gitignore_global
	[ -f ~/.vimrc ] || ln -s $(PWD)/src/.vimrc ~/.vimrc
	[ -f ~/.zshrc ] || ln -s $(PWD)/src/.zshrc ~/.zshrc
	[ -f ~/.wezterm.lua ] || ln -s $(PWD)/src/.wezterm.lua ~/.wezterm.lua

clean: ## Delete files
	rm -f ~/.gitconfig
	rm -f ~/.gitignore_global
	rm -f ~/.vimrc
	rm -f ~/.zshrc
	rm -f ~/.wezterm.lua

.PHONY: sync clean

##

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help

