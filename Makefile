.DEFAULT_GOAL := help

DEFAULT_BRANCH := main
PRJ:= $(PWD)
COMMIT := $(shell git rev-parse HEAD)
BIN = $(HOME)/bin
BASHRCD = $(HOME)/bashrc.d
COMMONRCD = $(HOME)/commonrc.d
# OS either 'Darwin' or 'Linux'
OS = $(shell uname -s)

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

bash: ## configure bash environment
	$(MKDIR) $(HOME)/bashrc.d

gpg: home ## download gpg scripts
	curl --silent -o $(BIN)/encrypt https://raw.githubusercontent.com/natemarks/pipeline-scripts/main/scripts/encrypt
	curl --silent -o $(BIN)/decrypt https://raw.githubusercontent.com/natemarks/pipeline-scripts/main/scripts/decrypt
	chmod 755 $(BIN)/encrypt
	chmod 755 $(BIN)/decrypt

stayback: ## configure stayback
	$(MKDIR) $(HOME)/.stayback
	$(HOME)/bin/decrypt $(PWD)/stayback.json.gpg
	$(LN) $($PWD)/stayback.json  $(HOME)/.stayback.json

vim: ## configure vim
	$(LN) $($PWD)/vim/vimrc  $(HOME)/.vimrc
