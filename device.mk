#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/pearl

# API
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_TARGET_VNDK_VERSION := 33

# A/B
AB_OTA_UPDATER := true
ENABLE_VIRTUAL_AB := true
TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true
AB_OTA_PARTITIONS += \
    apusys \
    audio_dsp \
    boot \
    ccu \
    dpm \
    dtbo \
    gpueb \
    gz \
    lk \
    logo \
    mcf_ota \
    mcupm \
    md1img \
    mvpu_algo \
    odm \
    odm_dlkm \
    pi_img \
    preloader_raw \
    product \
    scp \
    spmfw \
    sspm \
    system \
    system_ext \
    tee \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vcp \
    vendor \
    vendor_boot \
    vendor_dlkm \
    mi_ext
    
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    checkpoint_gc

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/mtk_plpath_utils \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

# Additional Target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@4.1 \
    android.hardware.vibrator-V1-ndk_platform \
    android.hardware.graphics.common@1.0 \
    libion \
    libxml2

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.vibrator-V1-ndk_platform.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.graphics.common@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so

# Bootctrl
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Drm
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1

# Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint \
    android.hardware.security.secureclock \
    android.hardware.security.sharedsecret

# Keystore2
PRODUCT_PACKAGES += \
    android.system.keystore2

# Mtk plpath utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery

# Otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/miui_releasekey

# Hidl Service
PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
