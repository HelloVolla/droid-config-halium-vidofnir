#!/bin/sh
while [ "$(binder-list -d /dev/hwbinder |grep android.hardware.graphics.composer@2.3::IComposer/default)" == "" ]; do
        echo "Waiting for hwc"
        sleep 1
done

exit 0
