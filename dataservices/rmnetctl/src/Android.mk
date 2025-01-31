LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO   := dataservices/rmnetctl
LOCAL_COPY_HEADERS      := ../inc/librmnetctl.h

LOCAL_SRC_FILES := librmnetctl.c
LOCAL_CFLAGS := -Wall -Werror

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
ifeq ($(TARGET_COMPILE_WITH_MSM_KERNEL),true)
LOCAL_HEADER_LIBRARIES := generated_kernel_headers
endif

LOCAL_MODULE := librmnetctl
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)
