#
# Copyright (C) 2013 The CyanogenMod Project
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

PRODUCT_PACKAGES += \
    charger_res_images \
    charger


PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init.awifi.usb.rc:root/init.awifi.usb.rc \
	$(LOCAL_PATH)/init.awifi.rc:root/init.awifi.rc \
	$(LOCAL_PATH)/fstab.palman:root/fstab.awifi \
	$(LOCAL_PATH)/ueventd.awifi.rc:root/ueventd.awifi.rc


PRODUCT_PROPERTY_OVERRIDES += \
	ro.radio.noril=true \
	ro.carrier=wifi-only

$(call inherit-product, device/lge/v500/device-common.mk)

DEVICE_PACKAGE_OVERLAYS := device/lge/v510/overlay
