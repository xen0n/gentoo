# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_P="LanguageTool-${PV}"
OFFICE_REQ_USE="java"
OFFICE_EXTENSIONS=( "${MY_P}.oxt" )
inherit office-ext-r1

DESCRIPTION="Style and Grammar Checker for LibreOffice"
HOMEPAGE="https://languagetool.org/"
SRC_URI="https://languagetool.org/download/${MY_P}.oxt"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=virtual/jre-1.8"
