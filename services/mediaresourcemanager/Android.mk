LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := ResourceManagerService.cpp ServiceLog.cpp

LOCAL_SHARED_LIBRARIES := libmedia libstagefright libbinder libutils liblog

LOCAL_MODULE:= libresourcemanagerservice

ifneq ($(BOARD_USE_64BITMEDIA),true)
LOCAL_32_BIT_ONLY := true
endif

LOCAL_C_INCLUDES += \
    $(TOPDIR)frameworks/av/include

LOCAL_CFLAGS += -Werror -Wall
LOCAL_CLANG := true

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
