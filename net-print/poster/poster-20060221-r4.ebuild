# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

DESCRIPTION="Small utility for making a poster from an EPS file or a one-page PS document"
HOMEPAGE="https://ctan.org/pkg/poster"
SRC_URI="mirror://kde/printing/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

PATCHES=(
	"${FILESDIR}/${P}-fix_gs_crash.patch"
	"${FILESDIR}/${P}-fix_duplicate_DocumentMedia.patch"
	"${FILESDIR}/${P}-fix_cutmarks.patch"
)

src_compile() {
	$(tc-getCC) ${CFLAGS} ${LDFLAGS} ${PN}.c -lm -o ${PN} || die
}

src_install() {
	dobin ${PN}
	doman ${PN}.1
	dodoc README ChangeLog
}
