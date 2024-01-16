COMPATIBLE_MACHINE_vkrzg2lc = "vkrzg2lc"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV = "1fa7acb4360944216070a41a9da26e6595c20998"

SRC_URI_append_vkrzg2lc = " \
	file://0001-add-vkrzg2lc-board-support.patch \
	file://0002-add-vklcd-ee0700-support.patch \
	file://0003-reduce-memory-buffers-for-vkrzg2lc-board.patch \
	file://0004-add-extra-overalys-audio-cm33-udmabuf.patch \
	file://0005-remove-udmabuf-from-main-device-tree.patch \
"

KBUILD_DEFCONFIG = "defconfig"
KCONFIG_MODE = "alldefconfig"

KBUILD_DEFCONFIG = "defconfig"

FILESEXTRAPATHS_prepend := "${THISDIR}/Kconfigs:"

SRC_URI += " \
	file://ADV7511.cfg \
	file://CANBUS.cfg \
	file://EEPROM_I2C.cfg \
	file://GT911.cfg \
	file://MXTTOUCH.cfg \
	file://LONTIUM_LT8912B.cfg \
	file://NETWORK.cfg \
	file://PANEL_ILITEK_ILI9881C.cfg \
	file://PANEL_PANEL_FITIPOWER_EK79007AD.cfg \
	file://RTL8211F.cfg \
	file://SND_SOC_DA7213.cfg \
	file://TRACEPOINTS.cfg \
	file://UDMABUF.cfg \
	file://USB_GADGET.cfg \
	file://USB_ACM.cfg \
"

SRC_URI += " ${@oe.utils.conditional("CONFIG_HASSI", "1", " file://docker.cfg file://apparmor.cfg ", "", d)} " 

# support to build dtbo
KERNEL_DTC_FLAGS = "-@"
KERNEL_DEVICETREE_OVERLAY ?= ""

do_compile_prepend() {
    if [ -n "${KERNEL_DTC_FLAGS}" ]; then
       export DTC_FLAGS="${KERNEL_DTC_FLAGS}"
    fi
}

do_compile_append() {
    for dtbf in ${KERNEL_DEVICETREE_OVERLAY}; do
        dtb=`normalize_dtb "$dtbf"`
        oe_runmake $dtb CC="${KERNEL_CC} $cc_extra " LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
    done
}

do_deploy_append(){
   install -d ${DEPLOYDIR}/overlays
   cp ${B}/arch/arm64/boot/dts/renesas/overlays/* ${DEPLOYDIR}/overlays
}
