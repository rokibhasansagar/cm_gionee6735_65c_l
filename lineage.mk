# Release name
PRODUCT_RELEASE_NAME := cm_gionee6735_65c_l

# Inherit some common Lineageos stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/gionee/gionee6735_65c_l/gionee6735_65c_l.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


TARGET_SCREEN_HEIGHT := 1280	
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gionee6735_65c_l
PRODUCT_NAME := cm_gionee6735_65c_l
PRODUCT_BRAND := gionee
PRODUCT_MODEL := gionee6735_65c_l
PRODUCT_MANUFACTURER := gionee

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := EN
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=America/New_York
