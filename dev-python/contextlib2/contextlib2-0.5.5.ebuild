# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Backports and enhancements for the contextlib module"
HOMEPAGE="https://pypi.org/project/contextlib2"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="PSF-2.4"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 ~mips ppc ppc64 sparc x86 ~amd64-fbsd"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/unittest2[${PYTHON_USEDEP}] )
"

python_test() {
	"${PYTHON}" test_contextlib2.py || die "Tests fail for ${EPYTHON}"
}
