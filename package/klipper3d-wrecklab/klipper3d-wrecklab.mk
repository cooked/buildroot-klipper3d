################################################################################
#
# klipper3d-wrecklab
#
################################################################################

KLIPPER3D_WRECKLAB_VERSION = devel
KLIPPER3D_WRECKLAB_SITE = $(call github,wreck-lab,wrecklabOS,$(KLIPPER3D_WRECKLAB_VERSION))
KLIPPER3D_WRECKLAB_DEPENDENCIES = klipper3d

# TODO: add config to flash on first boot
#mkdir -p -m 0755 $(TARGET_DIR)/opt/wrecklab/config
#	cp -rf $(@D)/src/modules/klipper/filesystem/home/pi/klipper_config/config  $(TARGET_DIR)/opt/wrecklab
#	cp $(KLIPPER3D_WRECKLAB_PKGDIR)/opt/klipper/config/printer_xyz.cfg  $(TARGET_DIR)/opt/wrecklab/config

# cp $(@D)/src/modules/wrecklab/filesystem/boot/firstrun  $(BINARIES_DIR)/klipper3d-wrecklab

define KLIPPER3D_WRECKLAB_INSTALL_TARGET_CMDS

	mkdir -p -m 0755 $(TARGET_DIR)/opt/wrecklab

	mkdir -p -m 0755 $(TARGET_DIR)/opt/wrecklab/scripts
	cp -rf $(@D)/src/modules/wrecklab/filesystem/home/pi/scripts  $(TARGET_DIR)/opt/wrecklab

endef


define KLIPPER3D_WRECKLAB_INSTALL_IMAGES_CMDS

endef

$(eval $(generic-package))