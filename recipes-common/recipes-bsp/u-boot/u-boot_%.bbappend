COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV = "7fcc1fdc253400f8b088ea10de30b865a32b957a"


SRC_URI += " \
	file://0001-uboot-add-vkrzg2lc-board-support.patch \
	file://0002-workaround-EE00700-artifacts.patch \
"
