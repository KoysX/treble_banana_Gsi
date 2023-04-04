$(call inherit-product, vendor/banana/config/common.mk)
$(call inherit-product, vendor/banana/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/banana/config/BoardConfigBanana.mk)
$(call inherit-product, device/banana/sepolicy/common/sepolicy.mk)
-include vendor/banana/build/core/config.mk

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true

# Google Camera Lite
PRODUCT_PACKAGES += \
       GoogleCameraGo


# Use CCache
USE_CCACHE := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.binary_xml=false \
	dalvik.vm.dex2oat64.enabled=true \


# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml

BANANA_MAINTAINER := Kuaipz

