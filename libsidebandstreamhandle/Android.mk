LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  SidebandStreamHandle.cpp

LOCAL_CFLAGS :=

LOCAL_C_INCLUDES:= \
    $(TARGET_OUT_HEADERS)/qcom/display \
    $(TOP)/system/core/libutils/include/

LOCAL_SHARED_LIBRARIES := \
  libcutils \
  liblog

LOCAL_MODULE := libsidebandstreamhandle
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

#####################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES := test/SidebandStreamHandleTest.cpp
LOCAL_MODULE := SidebandStreamHandleTest
LOCAL_SHARED_LIBRARIES := libcutils libc libhardware libsidebandstreamhandle liblog

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += $(LOCAL_PATH)/ \
                    hardware/libhardware/include/hardware \
                    $(TOP)/system/core/libutils/include/

LOCAL_MODULE_OWNER := qti
LOCAL_VENDOR_MODULE := true
include $(BUILD_EXECUTABLE)

#####################################################################################
