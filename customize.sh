#!/system/bin/sh

if [ $BOOTMODE = true ]; then
 ROOT=$(find `magisk --path` -type d -name "mirror" | head -n 1)
	ui_print "- Root path: $ROOT"
else
 ROOT=""
fi

PATH=/system/etc
	ui_print "- Patching hosts file"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/hosts $MODPATH$PATH

rm -rf $MODPATH/hosts
rm -rf $MODPATH/LICENSE