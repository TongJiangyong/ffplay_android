
#ifndef AGORALOG_H
#define AGORALOG_H


#ifdef ANDROID
#include <android/log.h>
#define XLOGD(...) __android_log_print(ANDROID_LOG_DEBUG,"AgoraMediaPlayer_TJY",__VA_ARGS__)
#define XLOGI(...) __android_log_print(ANDROID_LOG_INFO,"AgoraMediaPlayer_TJY",__VA_ARGS__)
#define XLOGE(...) __android_log_print(ANDROID_LOG_ERROR,"AgoraMediaPlayer_TJY",__VA_ARGS__)
#else
#define XLOGD(...) printf("AgoraMediaPlayer",__VA_ARGS__)
#define XLOGI(...) printf("AgoraMediaPlayer",__VA_ARGS__)
#define XLOGE(...) printf("AgoraMediaPlayer",__VA_ARGS__)

#endif


#endif //AGORALOG_H
