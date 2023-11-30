COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
	file://0001-tf_a-add-vkrzg2lc-board-support.patch \
"

PLATFORM_vkrzg2lc = "g2l"
EXTRA_FLAGS_vkrzg2lc = "BOARD=vkrzg2lc SPI_FLASH=MX25L51245G"
FLASH_ADDRESS_BL2_BP_vkrzg2lc = "00000"
FLASH_ADDRESS_FIP_vkrzg2lc = "1D200"
