#!/bin/bash

# Wait for the property system to be up.
while [ ! -e /dev/socket/property_service ]; do sleep 0.1; done

# Wait for nvram to be loaded.
while [ "$(getprop vendor.service.nvram_init)" != "Ready" ]; do sleep 0.2; done
while [ "$(getprop vendor.mtk.nvram.ready)" != "1" ]; do sleep 0.2; done

# enable Wi-Fi adapter in client mode
while [ ! -e /dev/wmtWifi ]; do sleep 0.2; done
echo P > /dev/wmtWifi

# set wifi.interface property since urfkill.conf expects that
setprop wifi.interface wlan0
