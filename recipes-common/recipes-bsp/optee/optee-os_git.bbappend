COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_append := "${THISDIR}/files"

SRC_URI += "\
	file://0001-optee_os-add-vkrzg2lc-board-support.patch \
"

PLATFORM_FLAVOR_vkrzg2lc = "g2lc_vkrz_2"

