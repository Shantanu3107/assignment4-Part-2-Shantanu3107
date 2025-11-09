#!/bin/bash
set -e
mkdir -p base_external/configs
cp buildroot/.config base_external/configs/aesd_qemu_defconfig
echo "Config saved to base_external/configs/aesd_qemu_defconfig"
