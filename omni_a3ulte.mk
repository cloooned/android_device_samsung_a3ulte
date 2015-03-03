$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/a3ulte/a3ulte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/a3ulte/overlay
LOCAL_PATH := device/samsung/a3ulte

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel
$(call inherit-product, build/target/product/full.mk)

#PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/twrp.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/recovery/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
#	$(LOCAL_PATH)/recovery/libkeyutils.so:recovery/root/sbin/libkeyutils.so \
#	$(LOCAL_PATH)/recovery/libsec_ecryptfs.so:recovery/root/sbin/libsec_ecryptfs.so \
#	$(LOCAL_PATH)/recovery/libsec_km.so:recovery/root/sbin/libsec_km.so \
#	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_a3ulte
PRODUCT_DEVICE := a3ulte
PRODUCT_BRAND := Samsung
