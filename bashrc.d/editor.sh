#!/usr/bin/env bash
# shellcheck disable=SC2230
if which vim; then
  export EDITOR=vim
  else
  export EDITOR=vi
fi
