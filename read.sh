#!/usr/bin/sh
# One-liner to make reading an article on my IBM 3477 easier
# could just be an alias, but w/e
readable $@ | w3m -M -no-mouse
