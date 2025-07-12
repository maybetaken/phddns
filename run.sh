#!/bin/bash
docker run -d \
    --restart always \
    --mac-address DC:A6:32:64:80:02 \
    --name phddns_mine \
    -v /etc/localtime:/etc/localtime:ro \
    yabin123/phddns:latest
