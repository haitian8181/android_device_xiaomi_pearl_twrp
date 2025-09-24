### TWRP device tree for Redmi Note 12T Pro (pearl)
=========================================

[简体中文](README_CN.md)

The Redmi Note 12T Pro (codenamed _"pearl"_) is a high-end, mid-range smartphone from Xiaomi.

It was released in May 2023.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core CPU with 4x Arm Cortex-A78 up to 3.1GHz
Chipset | Mediatek Dimensity 8200-Ultra
GPU     | Mali-G610 MC6
Memory  | 8/12 GB RAM (LPDDR5 6400Mbps)
Shipped Android Version | 13 with MIUI 14
Storage | 128/256/512 (UFS 3.1)
Battery | Non-removable Li-Po 5080 mAh battery
Display | 1080 x 2460 pixels, 6.6 inches, 30/48/50/60/90/120/144 Hz, IPS LCD

![Redmi Note 12T Pro](https://cdn.cnbj1.fds.api.mi-img.com/nr-pub/202305291422_e96776c7e1e35cebb454457c3344d3cd.png)

## Features

Works:

- [X] ADB
- [X] Decryption (Android 14)
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator
- [X] Touch

## Compile

First checkout minimal twrp with aosp tree:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc --all)
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/pearl" name="haitian8181/android_device_xiaomi_pearl" remote="github" revision="a14" />
```

Finally execute these:

```
source build/envsetup.sh
repopick <needed patch>
lunch twrp_pearl-eng
mka vendorbootimage -j$(nproc --all)
```
## To use it:

```
fastboot flash vendor_boot out/target/product/pearl/vendor_boot.img
```
