# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common gzosp stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

-include device/google/coral/device-gzosp.mk

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := coral
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := gzosp_coral
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200805.001 6578210 release-keys" \

BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys

$(call inherit-product-if-exists, vendor/google/coral/coral-vendor.mk)
