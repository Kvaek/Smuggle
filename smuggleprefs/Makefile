ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = smuggleprefs

smuggleprefs_FILES = smuggleRootController.m
smuggleprefs_FRAMEWORKS = UIKit
smuggleprefs_PRIVATE_FRAMEWORKS = Preferences
smuggleprefs_INSTALL_PATH = /Library/PreferenceBundles
smuggleprefs_CFLAGS = -fobjc-arc

smuggleprefs_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
smuggleprefs_LIBRARIES += sparkapplist

include $(THEOS_MAKE_PATH)/bundle.mk
