#!/bin/sh
/bin/chgrp -R input /sys/class/leds/vibrator/
/bin/chmod -R g+w /sys/class/leds/vibrator/*
