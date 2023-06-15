#!/usr/bin/env bash
# Syncs mail for my mu mailbox, then has the emacs daemon refresh the index if its running

# if we want to spit it somewhere else
#net=$(cat < /dev/null > /dev/tcp/8.8.8.8/53; echo $?)
#echo "output is $net"
net=0
check_process() {
  [ "$1" = "" ]  && return 0
  [ `pgrep -n $1` ] && return 1 || return 0
}
if [ "$net" == "0" ]; then
  mbsync -Va
  check_process "emacs"
  if [ $? -eq 1 ]; then
    emacsclient -e '(mu4e-update-index)'
  fi
  exit 0
fi
