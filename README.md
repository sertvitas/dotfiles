I borrowed the idea to manage my configuration with make from https://github.com/masasam/dotfiles. 

The makefile is self-documenting, but this project does  assume some thing about the configuration.


grep, sed, curl, shellcheck

### gpg is configured
 - gpg is installed
 - I use the seahorse and seahorse-nautilus packages to make it easy to work with my keys
 - my gpg private key is imported into seahorse
 - [I trusted my private key](https://www.gnupg.org/gph/en/manual/x334.html)

make gpg downloads a couple of convenience wrapper scripts that make it easy to encrypt and decrypt files based on assumptions about my config

### awscli v2 and stayback

install [stayback](https://github.com/natemarks/stayback)

install [awscliv2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

eorg3unv
