#!/bin/bash

# change with the erlc path of your current ejabberd installation
: ${EJBR_PATH:='/opt/ejabberd-16.03/'}
: ${EJBR_VERSION:='16.03'}

$EJBR_PATH/bin/erlc -DNO_EXT_LIB -DLAGER -I $EJBR_PATH/lib/fast_xml-1.1.3/include/ -I $EJBR_PATH/lib/ejabberd-$EJBR_VERSION/include/ -o ebin/ src/*
cp ebin/*.* /lib/ejabberd-16.03/ebin/
