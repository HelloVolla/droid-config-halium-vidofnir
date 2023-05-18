#! /bin/sh

# prevent gralloc.default.so from being loaded by libhybris
mount -o bind /dev/null /vendor/lib64/hw/gralloc.default.so

mkdir -p /data/vendor/audiohal/audio_param/
