#!/bin/sh

#Piratebox installer Script v.001
#  Matthias Strubel 


if [ -z  $1 ] || [ -z $2 ]; then
  echo "Usage install_piratebox my_config <part>"
  echo "   Parts: "
  echo "       init_openwrt   : Initializes the package on openwrt routers"
  echo "       part2          : sets Permissions and links correctly"
  exit 1
fi

if [ !  -f $1 ] ; then
  echo "Config-File $1 not found..."
  exit 1
fi

. $1

if [ $2 = 'init_openwrt' ] ; then
  #Load openwrt-common config and procedures file!
  . /etc/piratebox.common
  cp -va "$pb_pbmount/src/*" "$pb_share"
  touch "$pb_pbmount/conf/init_done"
fi

  
  