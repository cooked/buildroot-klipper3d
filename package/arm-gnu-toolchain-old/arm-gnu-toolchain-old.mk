################################################################################
#
# arm-gnu-toolchain-old
#
################################################################################
# see https://gist.github.com/titouanc/ea0685d9cd8592deb1c49d48e33b3eee

ARM_GNU_TOOLCHAIN_OLD_VERSION = 10.3-2021.10
ARM_GNU_TOOLCHAIN_OLD_SITE = https://developer.arm.com/-/media/Files/downloads/gnu-rm/$(ARM_GNU_TOOLCHAIN_OLD_VERSION)/
ARM_GNU_TOOLCHAIN_OLD_SOURCE = gcc-arm-none-eabi-$(ARM_GNU_TOOLCHAIN_OLD_VERSION)-x86_64-linux.tar.bz2
ARM_GNU_TOOLCHAIN_OLD_LICENSE = GPL-3.0+

HOST_ARM_GNU_TOOLCHAIN_OLD_INSTALL_DIR = $(HOST_DIR)/opt/gcc-arm-none-eabi

define HOST_ARM_GNU_TOOLCHAIN_OLD_INSTALL_CMDS
	rm -rf $(HOST_ARM_GNU_TOOLCHAIN_OLD_INSTALL_DIR)
	mkdir -p $(HOST_ARM_GNU_TOOLCHAIN_OLD_INSTALL_DIR)
	cp -rf $(@D)/* $(HOST_ARM_GNU_TOOLCHAIN_OLD_INSTALL_DIR)/

	mkdir -p $(HOST_DIR)/bin
	cd $(HOST_DIR)/bin && \
	for i in ../opt/gcc-arm-none-eabi/bin/*; do \
		ln -sf $$i; \
	done
endef

$(eval $(host-generic-package))
