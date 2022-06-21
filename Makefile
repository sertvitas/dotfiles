.DEFAULT_GOAL := help

DEFAULT_BRANCH := main
PRJ:= $(PWD)
COMMIT := $(shell git rev-parse HEAD)
BIN = $(HOME)/bin
BASHRCD = $(HOME)/bashrc.d
COMMONRCD = $(HOME)/commonrc.d
# OS = 'Darwin' or 'Linux'
OS = $(shell uname -s)
# get epoch seconds at the start of the make run
EPOCH = $(shell date +%s)
MKDIR = mkdir -p
LN = ln -vs
LNF = ln -vsf


help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

home: ## configure home directory
	# manage all of my executables in $HOME/bin
	$(MKDIR) $(HOME)/bin
	# manage temporary/scratch files in $HOME/tmp
	$(MKDIR) $(HOME)/tmp
	# manage project files in $HOME/projects
	$(MKDIR) $(HOME)/projects

bash: ## configure bash environment
	$(MKDIR) $(HOME)/bashrc.d
	# some desc
	$(LN) $(PRJ)/bashrc.d/add_home_bin_to_path.sh  $(BASHRCD)/add_home_bin_to_path.sh
	$(LN) $(PRJ)/bashrc.d/aliases.sh  $(BASHRCD)/aliases.sh
	$(LN) $(PRJ)/bashrc.d/aws_functions.sh $(BASHRCD)/aws_functions.sh
	$(LN) $(PRJ)/bashrc.d/bash_functions.sh $(BASHRCD)/bash_functions.sh
	$(LN) $(PRJ)/bashrc.d/bash_powerline.sh $(BASHRCD)/bash_powerline.sh
	$(LN) $(PRJ)/bashrc.d/editor.sh  $(BASHRCD)/editor.sh
	$(LN) $(PRJ)/bashrc.d/fzf.sh  $(BASHRCD)/fzf.sh
	$(LN) $(PRJ)/bashrc.d/git_aliases.sh $(BASHRCD)/git_aliases.sh
	$(LN) $(PRJ)/bashrc.d/git_functions.sh $(BASHRCD)/git_functions.sh
	$(LN) $(PRJ)/bashrc.d/go.sh $(BASHRCD)/go.sh
	$(LN) $(PRJ)/bashrc.d/ohmyzsh_git_aliases.sh  $(BASHRCD)/ohmyzsh_git_aliases.sh
	$(LN) $(PRJ)/bashrc.d/packer.sh $(BASHRCD)/packer.sh
	$(LN) $(PRJ)/bashrc.d/ssh_aliases.sh $(BASHRCD)/ssh_aliases.sh
	$(LN) $(PRJ)/bashrc.d/temp_aliases.sh  $(BASHRCD)/temp_aliases.sh
	$(LN) $(PRJ)/bashrc.d/tmux_aliases.sh $(BASHRCD)/tmux_aliases.sh
	sed -i.$(EPOCH) '/\.bashrc\.local/d' $(HOME)/.bashrc
	echo '. $(HOME)/.bashrc.local' >> $(HOME)/.bashrc
	$(LN) $(PRJ)/bashrc.local $(HOME)/.bashrc.local

bash-destroy:
	rm -rf $(BASHRCD)
	rm -f $(HOME)/.bashrc.local

gpg: home ## download gpg scripts
	curl --silent -o $(BIN)/encrypt https://raw.githubusercontent.com/natemarks/pipeline-scripts/main/scripts/encrypt
	curl --silent -o $(BIN)/decrypt https://raw.githubusercontent.com/natemarks/pipeline-scripts/main/scripts/decrypt
	chmod 755 $(BIN)/encrypt
	chmod 755 $(BIN)/decrypt

stayback: ## configure stayback
	$(MKDIR) $(HOME)/.stayback
	$(HOME)/bin/decrypt $(PWD)/stayback.json.gpg
	$(LN) $(PRJ)/stayback.json  $(HOME)/.stayback.json

vim: ## configure vim
	$(LN) $(PRJ)/vim/vimrc  $(HOME)/.vimrc


shellcheck: ## shellcheck project files
	find . -type f -name "*.sh" -exec "shellcheck" "--format=gcc" {} \;

packages: ## install required packages
    # dconf/uuid for gogh colors
	sudo apt-get install -y \
	curl \
	git \
    tree \
    make \
    wget \
    zip \
    unzip \
    seahorse-nautilus \
    fzf \
    ripgrep \
    silversearcher-ag \
    jq \
    fonts-powerline \
    dconf-cli \
    uuid-runtime \
    tmux \
    shellcheck \
    hunspell; \
    mkdir -p ~/.config/Code; \
    sudo ln -sf /usr/share/hunspell ~/.config/Code/Dictionaries
