# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/mythvideo/mythvideo-0.21_p17595.ebuild,v 1.1 2008/08/01 16:35:22 cardoe Exp $

EAPI="2"

MYTHTV_VERSION="v0.25pre-822-gb35ddbf"
MYTHTV_BRANCH="master"
MYTHTV_REV="b35ddbfee4c51b37d5f4b5600b6125bf6322341d"
MYTHTV_SREV="b35ddbf"


inherit mythtv-plugins

DESCRIPTION="Module for MythTV."
IUSE=""
KEYWORDS="~amd64 ~x86 ~ppc"

RDEPEND=""
DEPEND=""

src_install() {
	mythtv-plugins_src_install
}

