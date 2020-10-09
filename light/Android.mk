LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.realme_sdm710
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := android.hardware.light@2.0-service

LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.light@2.0-service.realme_sdm710.rc

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    libhidlbase \
    liblog \
    android.hardware.light@2.0

LOCAL_STATIC_LIBRARIES := \
    libbase \
    libutils

include $(BUILD_EXECUTABLE)
