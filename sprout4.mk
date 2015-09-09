#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# common sprout
$(call inherit-product, device/google/sprout-common/sprout.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.sprout.rc:root/init.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.sprout:root/fstab.sprout

# Hardware info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.chipset=Mediatek MT6582 \
    ro.device.cpu=1.3GHz quad-core Cortex-A7 \
    ro.device.gpu=Mali-400MP2 \
    ro.device.rear_cam=5 MP 2952x1944 pixels \
    ro.device.front_cam=2 MP \
    ro.device.screen_res=480x854pixels (218 ppi)
