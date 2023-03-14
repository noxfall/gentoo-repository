# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8


DESCRIPTION="A simple, basic markdown editor."

HOMEPAGE="https://github.com/noxfall/markit"

SRC_URI="https://github.com/noxfall/markit/releases/download/v0.2.0-alpha/markit_0.2.0.alpha_amd64.deb"

S="${WORKDIR}/usr/lib"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="gnome X"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

inherit unpacker

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	insinto "/opt"
	doins -r *
	dosym "/opt/${PN}/${PN}" "/usr/bin/${PN}"
}
