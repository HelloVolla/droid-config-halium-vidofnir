#!/bin/sh
/bin/chgrp -R input /sys/class/leds/vibrator/
/bin/chmod -R g+w /sys/class/leds/vibrator/*

#Resart some services
systemctl-user restart ngfd
systemctl restart ofono
