
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_LLD_VERSION = '9ed2cf4e762ab5894f3bb982f9b7e2d3063d96a8'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_LLD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Brett20093.git'
AESD_LLD_SITE_METHOD = git
AESD_LLD_GIT_SUBMODULES = YES

AESD_LLD_MODULE_SUBDIRS = misc-modules scull

define AESD_LLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/aesdlld-start-stop $(TARGET_DIR)/etc/init.d/S98lddmodules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
