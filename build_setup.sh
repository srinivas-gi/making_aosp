#!/bin/bash

set -e
set -x

# setup build
git clone https://github.com/P-Salik/android_vendor_realme_RMX1941 vendor/realme/RMX1941
git clone https://github.com/P-Salik/android_device_realme_RMX1941 device/realme/RMX1941
cd external/selinux && wget https://raw.githubusercontent.com/SamarV-121/android_vendor_extra/lineage-18.1/patches/external/selinux/0001-Revert-libsepol-Make-an-unknown-permission-an-error-.patch && patch -p1 < *.patch && cd ../..

