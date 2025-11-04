FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-sunxi-dts-arm-d1s-t113-Add-UART4-pinctrl.patch \
            file://jptk_t113_defconfig \
            file://jptk-t113.dtsi \
            file://jptk-t113.dts \
            "

copy_files() {
    install -m 644 ${UNPACKDIR}/jptk_t113_defconfig ${S}/configs/
    install -m 644 ${UNPACKDIR}/jptk-t113.dtsi ${S}/arch/arm/dts/
    install -m 644 ${UNPACKDIR}/jptk-t113.dts ${S}/arch/arm/dts/
}

do_unpack[postfuncs] += "copy_files"
