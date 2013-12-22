$(call inherit-product, device/htc/zaraul/full_zaraul.mk)

$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_fireball \
    BUILD_ID=IMM76D \
    BUILD_FINGERPRINT="htc/htc_europe/zara:4.2.2/JDQ39/258362.8:user/release-keys" \
    PRIVATE_BUILD_DESC="1.10.401.8 CL258362 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_NAME := cm_zaraul
PRODUCT_DEVICE := zaraul
