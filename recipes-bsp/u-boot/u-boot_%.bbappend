FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://bootcmd.cfg \
            file://0001-sunxi-dts-arm-d1s-t113-Add-UART4-pinctrl.patch \
            file://jptk_t113_defconfig \
            file://jptk-t113.dtsi \
            file://jptk-t113.dts \
            "

do_configure:prepend() {
    install -m 644 ${UNPACKDIR}/jptk_t113_defconfig ${S}/configs/
    install -m 644 ${UNPACKDIR}/jptk-t113.dtsi ${S}/arch/arm/dts/
    install -m 644 ${UNPACKDIR}/jptk-t113.dts ${S}/arch/arm/dts/
}
