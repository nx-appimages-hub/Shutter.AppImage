# This software is a part of the A.O.D apprepo project
# Copyright 2015 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
OUTPUT="Shutter.AppImage"


all: clean
	mkdir --parents ./build
	mkdir --parents ./AppDir/application
	mkdir --parents ./AppDir/perl


	echo "Building: $(OUTPUT)"
	wget --output-document=shutter.tar.gz --continue https://launchpad.net/shutter/0.9x/0.94.2/+download/shutter-0.94.2.tar.gz
	tar -zxf shutter.tar.gz --directory ./build

	cp -r ./build/shutter*/* ./AppDir/application
	chmod +x ./AppDir/application/bin/*

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-5.16.3-295.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-libs-5.16.3-295.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libgnomecanvas-2.30.3-8.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libart_lgpl-2.3.21-10.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/gnome-vfs2-2.24.4-14.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/GConf2-3.2.6-8.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/openssl-libs-1.0.2k-19.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libgnomeui-2.24.5-8.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libbonoboui-2.24.5-7.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libgnome-2.32.1-9.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libbonobo-2.32.1-7.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/ORBit2-2.14.19-13.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libgnome-keyring-3.12.0-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libgcrypt-1.5.3-14.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libwnck-2.31.0-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/g/gtkimageview-1.6.4-19.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/u/unique-1.1.6-10.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/ImageMagick-6.9.10.68-3.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gnome2-1.045-1.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/gnome-web-photo-0.10.5-5.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libappindicator-12.10.0-13.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libcanberra-gtk2-0.30-9.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/libcanberra-0.30-9.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv





	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gtk2-AppIndicator-0.15-9.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Image-ExifTool-12.00-1.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Goo-Canvas-0.06-20.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Gtk2-1.2495-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Encode-2.51-7.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-constant-1.27-2.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Carp-1.26-244.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Exporter-5.68-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Glib-1.305-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Pango-1.226-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gnome2-Canvas-1.002-24.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gnome2-VFS-1.082-1.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gnome2-Wnck-0.16-20.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gtk2-ImageView-0.04-17.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Gtk2-Unique-0.05-10.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-PathTools-3.40-5.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-File-Temp-0.23.01-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-File-Which-1.09-12.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Data-Dumper-2.145-3.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-XML-Simple-2.20-5.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Net-DBus-1.0.0-7.el7.nux.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-HTTP-Message-6.06-6.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Time-HiRes-1.9725-3.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Digest-MD5-2.52-3.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Sort-Naturally-1.03-8.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-File-Path-2.09-2.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-File-Copy-Recursive-0.38-14.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-XML-Parser-2.41-10.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://li.nux.ro/download/nux/dextop/el7/x86_64/perl-Proc-Simple-1.26-12.el7.nux.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-gettext-1.05-28.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Getopt-Long-2.40-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Pod-Usage-1.63-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-podlators-2.5.1-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Pod-Simple-3.28-4.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Pod-Escapes-1.04-295.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Proc-ProcessTable-0.48-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Socket-2.010-5.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Time-Local-1.2300-2.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-WWW-Mechanize-1.72-4.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-JSON-MaybeXS-1.003005-1.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/ImageMagick-perl-6.9.10.68-3.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-HTML-Parser-3.71-4.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-JSON-PP-2.27202-2.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Cpanel-JSON-XS-3.0104-1.el7.x86_64.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-parent-0.225-244.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Net-OAuth-0.28-2.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/p/perl-Path-Class-0.33-1.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv

	wget --output-document=build.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/perl-Perl-OSType-1.003-3.el7.noarch.rpm
	rpm2cpio build.rpm | cpio -idmv






















	cp -r ./usr/bin ./AppDir/perl
	cp -r ./usr/share ./AppDir/perl
	cp -r ./usr/lib64 ./AppDir/perl/lib
	cp -r ./usr/lib64/perl5/CORE/* ./AppDir/perl/lib
	rm -rf ./AppDir/perl/lib/perl5/CORE
	
	chmod +x ./AppDir/perl/bin/*
	chmod +x AppDir/AppRun

	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	#make clean
	

clean:
	rm -rf ./build
	rm -rf ./AppDir/application
	rm -rf ./AppDir/perl
	rm -rf ./usr ./var ./etc
	rm -rf ./*.rpm ./*.tar.gz
	
