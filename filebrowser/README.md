# File Browser

## How to build the image

```sh
./build.sh
```

## How to use the image

```sh
mkdir -p srv database config
touch database/database.db
appjail oci run \
    -d \
    -o overwrite=force \
    -o virtualnet=":<random> default" \
    -o nat \
    -o template=/usr/local/share/examples/appjail/templates/freebsd-oci.conf \
    -o fstab="$PWD/srv /srv" \
    -o fstab="$PWD/database/database.db database.db <pseudofs>" \
    -o fstab="$PWD/config/settings.json /.filebrowser.json <pseudofs>:reverse" \
    -e FB_NOAUTH=1 \
    docker.io/dtxdf007/filebrowser filebrowser
appjail oci set-boot on filebrowser
```
