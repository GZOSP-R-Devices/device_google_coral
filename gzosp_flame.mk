# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common gzosp stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

-include device/google/coral/device-gzosp.mk

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := flame
PRODUCT_MODEL := Pixel 4
PRODUCT_NAME := gzosp_flame
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flame \
    PRIVATE_BUILD_DESC="flame-user RP1A.201105.002 6869500 release-keys"

BUILD_FINGERPRINT := "google/flame/flame:11/RP1A.201105.002/6869500:user/release-keys"

$(call inherit-product-if-exists, vendor/google/flame/flame-vendor.mk)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
