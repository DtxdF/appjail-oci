# File Browser

## How to build the image

```sh
./build.sh
```

## How to use the image

```sh
appjail oci run \
    -o start \
    -o overwrite=force \
    -o virtualnet=":<random> default" \
    -o nat \
    -o template=/usr/local/share/examples/appjail/templates/freebsd-oci.conf \
    localhost/filebrowser:latest filebrowser
```
