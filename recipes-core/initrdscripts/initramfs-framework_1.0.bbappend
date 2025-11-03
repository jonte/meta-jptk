FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = "\
    file://shell \
"

do_install:append() {
    install ${S}/shell ${D}/init.d/80-shell
}

PACKAGES:append = "\
    initramfs-module-shell \
"

SUMMARY:initramfs-module-shell = "initramfs shell support"
RDEPENDS:initramfs-module-shell = "${PN}-base"
FILES:initramfs-module-shell = "/init.d/80-shell"
