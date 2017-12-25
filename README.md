# nginx OS

Nginx OS is based on [LinuxKit](https://github.com/linuxkit/linuxkit/) and [Moby Project](https://mobyproject.org/) capabilities.

## Building

```bash
make all
```

## Booting and Testing

You can use `linuxkit run nginx-os` or `linuxkit run nginx-os.<format>` to execute the image you created with `linuxkit build nginx-os.yml`.

This will use a suitable backend for your platform or you can choose one, for example VMWare.

See `linuxkit run --help`.

Exemple:

```bash
linuxkit run -publish 80:80/tcp -containerized nginx-os
```
