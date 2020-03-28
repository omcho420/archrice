#!/bin/sh

# load .xprofile
[ -f ~/.xprofile ] && . ~/.xprofile &

while true; do
	ssh-agent dwm || break
done;
