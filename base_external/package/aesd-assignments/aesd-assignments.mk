################################################################################
#
# aesd-assignments
#
################################################################################

AESD_ASSIGNMENTS_VERSION = main
AESD_ASSIGNMENTS_SITE = git@github.com:Shantanu3107/assignments-3-and-later-Shantanu3107.git
AESD_ASSIGNMENTS_SITE_METHOD = git

AESD_ASSIGNMENTS_INSTALL_TARGET = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
    $(MAKE) -C $(@D)
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 $(@D)/finder.sh $(TARGET_DIR)/usr/bin/finder.sh
    $(INSTALL) -m 0755 $(@D)/finder-test.sh $(TARGET_DIR)/usr/bin/finder-test.sh
    $(INSTALL) -m 0755 $(@D)/writer $(TARGET_DIR)/usr/bin/writer
    $(INSTALL) -m 0755 $(@D)/tester.sh $(TARGET_DIR)/usr/bin/tester.sh

    mkdir -p $(TARGET_DIR)/etc/finder-app/conf
    cp -r $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
endef

$(eval $(generic-package))
