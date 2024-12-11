# FreeBSD (14.x)

## How to build the image

```sh
./build-oci-image.sh
```

## How to use the image

```sh
appjail oci run \
    -o start \
    -o overwrite=force \
    -o virtualnet=":<random> default" \
    -o nat \
    -o template=/usr/local/share/examples/appjail/templates/freebsd-oci.conf \
    docker.io/dtxdf007/freebsd14:14.2-RELEASE-amd64 freebsd14
```
