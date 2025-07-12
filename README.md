# phddns
a phddns image for haos docker

## usage
```
docker pull yabin123/phddns:latest
```

## run
```
docker run -d \
    --restart always \
    --mac-address AA:BB:CC:DD:EE:FF \
    --name phddns_mine \
    -v /etc/localtime:/etc/localtime:ro \
    yabin123/phddns:latest
```

To avoid duplicate device please replace `AA:BB:CC:DD:EE:FF`.

## login
`docker logs phddns_mine`

login in with your bestoray app

### BTW
Bestoray only provides a clean version for amd64, while aarch64 for a non-limited raspberry system works proper with official deb images in ubuntu.

This is not as easy as I thought at a first glance due to the limitation of systemd in such HAOS system.
