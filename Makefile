EXCLUSIONS := .DS_Store .git .gitmodules .gittributes .travis.yml
CANDIDATES := $(wildcard .??*) bin
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

#dotfilesをホームディレクトリにリンク
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

#設定
init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)

