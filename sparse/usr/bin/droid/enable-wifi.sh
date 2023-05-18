#!/bin/bash

#while [ ! -e "/dev/wmtWifi" ]; do
while [ "`getprop vendor.connsys.driver.ready`" != "yes" ]; do
        sleep 1
done

sleep 3

echo 1 > /dev/wmtWifi
