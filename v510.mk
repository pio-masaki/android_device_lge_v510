# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := omni_v510
PRODUCT_DEVICE := palman
PRODUCT_BRAND := lge
PRODUCT_MODEL := LGE-V510
PRODUCT_MANUFACTURER := LGE

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/v510/device.mk)
$(call inherit-product-if-exists, vendor/lge/v510/v510-vendor.mk)
