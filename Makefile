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


vim: ## configure vim
	$(LN)$($PWD)/vim/vimrc  $(HOME)/.vimrc
