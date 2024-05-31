################################################################################
#
# klipper3d-repl
#
################################################################################

KLIPPER3D_REPL_VERSION = main
KLIPPER3D_REPL_SITE = $(call github,unjordy,klipper-repl,$(KLIPPER3D_REPL_VERSION))
KLIPPER3D_REPL_DEPENDENCIES = klipper3d python-prompt-toolkit python-pygments
KLIPPER3D_REPL_SETUP_TYPE = setuptools

define KLIPPER3D_REPL_BUILD_CMDS
	cp $(KLIPPER3D_REPL_PKGDIR)/pyproject.toml $(@D)/pyproject.toml	
endef

$(eval $(python-package))