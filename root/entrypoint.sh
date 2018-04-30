#!/bin/sh
/usr/bin/transmission-daemon -a *.*.*.* -t -u $TRANSMISSION_USER -v $TRANSMISSION_PASSWORD -f
