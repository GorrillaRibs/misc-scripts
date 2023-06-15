#!/usr/bin/env bash
# Oneliner to launch a new emacs frame with the requested manpage
emacsclient -c --eval '(woman \"$1\)'
