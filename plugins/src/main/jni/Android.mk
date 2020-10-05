LOCAL_PATH := $(call my-dir)
MAIN_LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := MRZ

LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -Wno-error=format-security -fpermissive -fvisibility=hidden -fvisibility-inlines-hidden
LOCAL_CFLAGS += -fno-rtti -fno-exceptions -g0 -fomit-frame-pointer -ffunction-sections -fdata-sections
LOCAL_CPPFLAGS += -fvisibility=hidden -ffunction-sections -fdata-sections
LOCAL_LDFLAGS += -Wl,--strip-all

LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)

LOCAL_SRC_FILES := src/main.cpp \
	src/Unity/Quaternion.hpp \
	src/Unity/Unity.h \
	src/Unity/Vector2.hpp \
	src/Unity/Vector3.hpp \
	src/Substrate/hde64.c \
	src/Substrate/SubstrateDebug.cpp \
	src/Substrate/SubstrateHook.cpp \
	src/Substrate/SubstratePosixMemory.cpp \
	src/KittyMemory/KittyMemory.cpp \
	src/KittyMemory/MemoryPatch.cpp

LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2 -Xlint

include $(BUILD_SHARED_LIBRARY)