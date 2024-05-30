# buildroot-klipper3d

[Klipper](https://www.klipper3d.org/) is a 3d-Printer firmware. It combines the power of a general purpose computer with one or more micro-controllers.  

[Buildroot](https://buildroot.org/) is a simple, efficient and easy-to-use tool to generate embedded Linux systems through cross-compilation.  

*buildroot-klipper3d* is a [Buildroot external tree](https://buildroot.org/downloads/manual/manual.html#outside-br-custom) that provides the necessary configuation files to build Klipper as a Buildroot package.

**- IMPORTANT -**  
The package has been tested on (a Buildroot build for) the Raspberry Pi 4, which runs the Klipper3d host, connected to a [printHAT 2](https://docs.wrecklab.com/phat2/) control board based on the STM32F401 microcontroller.


## Getting started

This repository is meant to be used defining the BR2_EXTERNAL variable, as described in the [official manual](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)

```bash

git clone https://github.com/cooked/buildroot-klipper3d.git

# get buildroot (skip if you have it already)
git clone https://github.com/buildroot/buildroot.git

cd buildroot

# use explicit Buildroot release (latest known to work for this project)
git fetch --all --tags
git checkout 2023.11.x

# configure the external folder (do nothing, exit without saving)
make BR2_EXTERNAL=../buildroot-klipper3d menuconfig

# check that custom configurations are listed
make list-defconfigs

# load config and build
make raspberrypi4_klipper3d_defconfig
make
```

## Reference

Read more about [Buildroot basics](https://www.stefanocottafavi.com/buildroot_basics/) and how to [build a realtime Linux kernel](https://www.stefanocottafavi.com/buildroot_rpi_kernel_rt/) with it.
