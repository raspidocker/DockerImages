#!/bin/bash

function setaccd () {
	if [ -d "$1" ]; then
		chmod -R a+x $1
	fi
}
function setaccf () {
	if [ -f "$1" ]; then
		chmod a+x $1
	fi
}

setaccd /etc/docker/*
setaccf /command
setaccf /start