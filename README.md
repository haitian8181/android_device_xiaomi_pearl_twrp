### TWRP device tree for Xiaomi 13T (aristotle)

=========================================

The Xiaomi 13T (codenamed _"aristotle"_) is a high-end, mid-range smartphone from Xiaomi.

It was released in September 2023.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core CPU with 4x Arm Cortex-A78 up to 3.1GHz
Chipset | Mediatek Dimensity 8200
GPU     | Mali-G610 MC6
Memory  | 8/12 GB RAM (LPDDR5T 9600Mbps)
Shipped Android Version | 13
Storage | 256 GB (UFS 3.1)
Battery | Li-Po 5000 mAh, non-removable
Display | 1220 x 2712 pixels, 6.67 inches, 60/120/144 hz

![Xiaomi 13T](https://i02.appmifile.com/524_operator_sg/14/08/2023/936823ab29ba43b0bf4e42f09d424903.png)

## Features

Works:

- [X] ADB
- [X] Partially Decryption (Android 13)
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] Vibrator

## Compile

First checkout minimal twrp with aosp tree:

```
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -j$(nproc --all)
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/xiaomi/aristotle" name="JonesqPacMan/android_device_xiaomi_aristotle_TWRP" remote="github" revision="TWRP-12.1_A13" />
```

Finally execute these:

```
source build/envsetup.sh
repopick <needed patch>
lunch twrp_aristotle-eng
mka vendorbootimage -j$(nproc --all)
```
## To use it:

```
fastboot flash vendor_boot out/target/product/aristotle/vendor_boot.img
```
