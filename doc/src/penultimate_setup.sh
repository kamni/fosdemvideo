#! /bin/bash

#
# Copyright 2006-2011 Holger Levsen 
# released under the GPLv=2
#

# country=UNIX
LANG=C

# distribution we are using
DISTRO=squeeze

# hardcode mirror to use
MIRROR=ftp.de.debian.org

# which arch are we running on? (needed for sources.list)
ARCH=`dpkg --print-architecture`

# overwrite existing sources.lists, provide sensible defaults
echo "deb http://$MIRROR/debian/ $DISTRO main contrib non-free
deb http://security.debian.org/ $DISTRO/updates main contrib non-free

deb http://db.debconf.org/dc-admin/archive/ $DISTRO/$ARCH/
deb http://db.debconf.org/dc-admin/archive/ $DISTRO/all/
" > /etc/apt/sources.list

# begin upgrade to squeeze snapshot
export DEBCONF_FRONTEND=noninteractive  
export DEBIAN_FRONTEND=noninteractive 
apt-get update 
apt-get -y install apt
apt-get -y install linux-image-2.6.32-5-686-bigmem

# grab next stage
wget -O final_setup.sh 'http://anonscm.debian.org/gitweb/?p=debconf-video/config.git;a=blob_plain;f=doc/src/penultimate_setup.sh;hb=HEAD'
mv final_setup.sh /root

echo "
This is almost a FAI-ified DebConf Video machine for DC10.
You should see final_setup.sh in /root/

Run it and then life will be good." >> /etc/motd
