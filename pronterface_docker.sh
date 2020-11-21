#!/bin/bash
docker run --net=host \
--env="DISPLAY" \
--volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
--device=/dev/ttyUSB0 \
-v $PWD/Docker_Volume:/home/user/ \
-ti printrun_image
