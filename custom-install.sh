#!/bin/bash 
sed -i 's/\(CFLAGS=.*\)-Werror \(.*\)/\1\2/' configure &&
sed -i -e 's/-DG_DISABLE_DEPRECATED=1//' \
 -e '/-DGDK_DISABLE_DEPRECATED/d' avahi-ui/Makefile.in &&
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     \
            --disable-mono       \
            --disable-monodoc    \
            --disable-python     \
            --disable-qt3        \
            --disable-qt4        \
            --disable-glib   \
            --disable-gobject   \
            --disable-gtk        \
            --disable-gtk3        \
            --disable-dbus        \
            --enable-core-docs   \
            --with-distro=none &&
make && make install