ARCHS = arm64 arm64e
SDK_VERSION=13.5
THEOS_DEVICE_IP = local
FINALPACKAGE = 0
DEBUG = 1
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Smuggle

Smuggle_EXTRA_FRAMEWORKS += Cephei
Smuggle_LIBRARIES += sparkapplist

Smuggle_FILES = Smuggle.xm
Smuggle_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += smuggleprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
		install.exec "killall -9 SpringBoard"
