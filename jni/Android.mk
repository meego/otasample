LOCAL_PATH := $(call my-dir)

MY_INCLUDES=$(LOCAL_PATH)/include

include $(CLEAR_VARS)
LOCAL_MODULE := tokyocabinet
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libtokyocabinet.so
# NOTE: You may want to modify the following path
LOCAL_EXPORT_C_INCLUDES := /usr/local/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := audioneex
LOCAL_SRC_FILES := lib/$(TARGET_ARCH_ABI)/libaudioneex.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := audioneex-jni
LOCAL_SRC_FILES := audioneex-jni.cpp TCDataStore.cpp
LOCAL_C_INCLUDES += $(MY_INCLUDES)
LOCAL_CPPFLAGS += -std=c++11
LOCAL_SHARED_LIBRARIES := audioneex tokyocabinet
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
