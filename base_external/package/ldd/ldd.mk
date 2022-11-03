##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

LDD_VERSION = '57443ea48b80e55be6e8244a7b500dc00fec5810'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Sona-Subair.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES=YES
LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc_module


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/modulr_unload $(TARGET_DIR)usr/bin	
endef

$(eval $(kernal-module))
$(eval $(generic-package))
