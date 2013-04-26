LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := base.c dnstc.c http-connect.c \
	log.c md5.c socks5.c \
	base64.c http-auth.c http-relay.c main.c \
	parser.c redsocks.c redudp.c socks4.c utils.c

LOCAL_STATIC_LIBRARIES := libevent

LOCAL_MODULE := redsocks
LOCAL_CFLAGS := -O2 -std=gnu99 -g -I$(LOCAL_PATH) \
	-I$(LOCAL_PATH)/../libevent/include \
	-I$(LOCAL_PATH)/../libevent

include $(BUILD_EXECUTABLE)
