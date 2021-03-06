################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="miniupnpc"
PKG_VERSION="1.9.20160209"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://miniupnp.free.fr"
PKG_URL="http://miniupnp.free.fr/files/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="system"
PKG_SHORTDESC="miniupnpc: software which supports the UPnP Internet Gateway Device (IGD) specifications"
PKG_LONGDESC="The MiniUPnP project offers software which supports the UPnP Internet Gateway Device (IGD) specifications."
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAINTAINER="Daniel Forsberg (jenkins101)"

make_target() {
  cd $ROOT/$PKG_BUILD
  make upnpc-static
}

makeinstall_target() {
  : # nop
}
