ZDOTDIR = "~/.config/zsh"

setup:
	@printf '%s\n' "40" '' | tr ' ' - && echo "SETUP FOLDER AND CHANGE ZDOTDIR"
	mkdir -p ~/.config
	echo "ZDOTDIR=$(ZDOTDIR)" > ~/.zshenv

copy-dotfiles:
	@printf '%s\n' "40" '' | tr ' ' - && echo "MOVING DOTFILES"
	mv ./zsh ~/.config
	mv ./tmux ~/.config
	mv ./nvim ~/.config
	mv ./coc ~/.config

brew-install:
	@printf '%s\n' "40" '' | tr ' ' - && echo "INSTALLING HOMEBREW"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew-pkg:
	@printf '%s\n' "40" '' | tr ' ' - && echo "INSTALLING HOMEBREW PACKAGES"
	brew install fzf wget node go neovim tmux python webpack zsh zsh-completions zsh-git-prompt zsh-syntax-highlighting typescript 
	brew tap caskroom/cask
	brew cask install kitematic spectacle

prezto:
	@printf '%s\n' "40" '' | tr ' ' - && echo "INSTALLING PREZTO"
	zsh && git clone --recursive https://github.com/sorin-ionescu/prezto.git "$(ZDOTDIR)/.zprezto"
	setopt EXTENDED_GLOB
	# Might get an error here? 
	for rcfile in "$(ZDOTDIR)"/.zprezto/runcoms/^README.md(.N); do
	  ln -s "$rcfile" "$(ZDOTDIR)/.${rcfile:t}"
	done
	echo `source "${ZDOTDIR:-$HOME}/aliases.zsh"` >> $(ZDOTDIR)/.zshrc
	echo `source "${ZDOTDIR:-$HOME}/exports.zsh"` >> $(ZDOTDIR)/.zshrc

mac-install: setup brew-install copy-dotfiles
	brew-pkg
	prezto

.PHONY: setup copy-dotfiles brew-install brew-pkg prezto mac-install

# TODO: IDK, but this is a nice base for installation


