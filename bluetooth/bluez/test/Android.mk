LOCAL_PATH:= $(call my-dir)
BUILD_BTIOTEST:=1
BUILD_HCIEMU:=0

#
# hstest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	hstest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src \
	$(LOCAL_PATH)/../../../../../device/sony/$(TARGET_DEVICE)/hardware

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=hstest

include $(BUILD_EXECUTABLE)

#
# l2test
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	l2test.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=l2test

include $(BUILD_EXECUTABLE)

#
# rctest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	rctest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=rctest

include $(BUILD_EXECUTABLE)


#
# scotest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	scotest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=scotest

include $(BUILD_EXECUTABLE)

#
# agent
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	agent.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src \
	$(call include-path-for, dbus) \
	$(LOCAL_PATH)/../../../../../device/sony/$(TARGET_DEVICE)/hardware

LOCAL_SHARED_LIBRARIES := \
	libdbus

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=agent

include $(BUILD_EXECUTABLE)

#
# attest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	attest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=attest

include $(BUILD_EXECUTABLE)

#
# avtest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	avtest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=avtest

include $(BUILD_EXECUTABLE)

#
# bdaddr
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	bdaddr.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=bdaddr

include $(BUILD_EXECUTABLE)

ifeq ($(BUILD_BTIOTEST),1)
#
# btiotest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	btiotest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src \
	$(call include-path-for, glib) \
	$(call include-path-for, glib)\glib \
	$(LOCAL_PATH)/../../glib \
	$(LOCAL_PATH)/../btio \
	$(LOCAL_PATH)/../../../../../device/sony/$(TARGET_DEVICE)/hardware


LOCAL_SHARED_LIBRARIES := \
	libbluetoothd \
	libbluetooth \
	libglib \
	libbtio

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=btiotest

include $(BUILD_EXECUTABLE)
endif #BTIOTEST


ifeq ($(BUILD_HCIEMU),1)
#
# hciemu
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	hciemu.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src \
	$(call include-path-for, glib) \
	$(call include-path-for, glib)\glib

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd \
	libbluetooth \
	libc \
	libcutils

LOCAL_STATIC_LIBRARIES := \
	libglib_static

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=hciemu

include $(BUILD_EXECUTABLE)
endif #BUILD_HCIEMU

#
# lmptest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	lmptest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=lmptest

include $(BUILD_EXECUTABLE)

#
# sdptest
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-DVERSION=\"4.93\" \
	-Wno-missing-field-initializers \
	-Wno-pointer-arith

LOCAL_SRC_FILES:= \
	sdptest.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=sdptest

include $(BUILD_EXECUTABLE)

#
# hidpts - simple tools for PTS testing
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        hidpts.c

LOCAL_SHARED_LIBRARIES := \
        libc

LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:=hidpts

include $(BUILD_EXECUTABLE)
