FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://jptk-t113.dtsi \
            file://jptk-t113.dts \
            "

do_configure:prepend() {
    install -m 644 ${UNPACKDIR}/jptk-t113.dtsi ${S}/arch/arm/boot/dts/allwinner/
    install -m 644 ${UNPACKDIR}/jptk-t113.dts ${S}/arch/arm/boot/dts/allwinner/
}
