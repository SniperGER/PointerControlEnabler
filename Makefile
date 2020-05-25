THEOS_DEVICE_IP = Janiks-iPad-Pro.local

PACKAGE_VERSION = 1.0
ARCHS = arm64 arm64e
TARGET = iphone:13.3:latest

INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PointerControlEnabler

PointerControlEnabler_FILES = Tweak.xm
PointerControlEnabler_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
