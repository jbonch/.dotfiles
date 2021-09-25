#! /bin/bash
wget https://sourceforge.net/projects/operao/files/libffmpeg.so -P /tmp
sudo mv /tmp/libffmpeg.so /usr/lib/libffmpeg_h264.so
sudo mv /usr/lib/opera/libffmpeg.so /usr/lib/opera/libffmpeg.so.orig
sudo ln -s /usr/lib/libffmpeg_h264.so /usr/lib/opera/libffmpeg.so