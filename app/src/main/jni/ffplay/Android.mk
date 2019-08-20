LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := avcodec
LOCAL_SRC_FILES := ../prebuilt/libavcodec.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avdevice
LOCAL_SRC_FILES := ../prebuilt/libavdevice.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avfilter
LOCAL_SRC_FILES := ../prebuilt/libavfilter.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avformat
LOCAL_SRC_FILES := ../prebuilt/libavformat.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avresample
LOCAL_SRC_FILES := ../prebuilt/libavresample.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avutil
LOCAL_SRC_FILES := ../prebuilt/libavutil.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := postproc
LOCAL_SRC_FILES := ../prebuilt/libpostproc.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swresample
LOCAL_SRC_FILES := ../prebuilt/libswresample.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swscale
LOCAL_SRC_FILES := ../prebuilt/libswscale.so
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := SDL2

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../SDL2/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include


LOCAL_MODULE    := ffplay
LOCAL_SRC_FILES := $(LOCAL_PATH)/cmdutils.c $(LOCAL_PATH)/ffplay.c

# for logging
LOCAL_LDLIBS    += -llog
# for native windows
LOCAL_LDLIBS    += -landroid
# for egl
LOCAL_LDLIBS += -lEGL
# for OpenGL
LOCAL_LDLIBS += -lGLESv2
# for native audio
LOCAL_LDLIBS    += -lOpenSLES

LOCAL_SHARED_LIBRARIES += \
                        avcodec \
                        avformat \
                        avdevice \
                        avfilter \
                        avresample \
                        avutil \
                        postproc \
                        swresample \
                        swscale


LOCAL_SHARED_LIBRARIES += libSDL2
#LOCAL_SHARED_LIBRARIES += libcutil
#LOCAL_SHARED_LIBRARIES += libstlport

LOCAL_CFLAGS += -D__STDC_CONSTANT_MACROS=1
LOCAL_CFLAGS += -D__STDC_FORMAT_MACROS=1
LOCAL_CFLAGS += -D__ANDROID_API__=19
 
include $(BUILD_SHARED_LIBRARY)
