# kickstarts

## various kickstarts for my own usage to use in conjunction with a PXE server such as netboot.xyz


## Starting up a http server for the kickstarts

TODO look into how to pull this into netboot and custom menus.

```
cd kickstartdir
python -m http.server
```

## netboot notes

### docker server

https://github.com/netbootxyz/netboot.xyz

starting up a netboot server (bare essentials):
https://hub.docker.com/r/linuxserver/netbootxyz

```
docker run -d \
  --name=netbootxyz \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 \
  -p 69:69/udp \
  --restart unless-stopped \
  lscr.io/linuxserver/netbootxyz:latest
```