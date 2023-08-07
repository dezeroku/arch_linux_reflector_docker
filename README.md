# Arch Linux Reflector Dockerized

Basically [reflector](https://xyne.dev/projects/reflector/), but in Docker.

Built for AMD64/ARM64/ARMv7

## Why?
I was playing with [pacoloco](https://github.com/anatol/pacoloco) deploy on my home K3S cluster, based on Raspberry Pi.

While the app itself delivers docker images, you still have to define the mirrors somehow.
Reflector is a great tool for that, but I couldn't find any usable container image with it.
