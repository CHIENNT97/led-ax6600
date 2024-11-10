#!/bin/sh

. /lib/functions.sh
. /etc/openwrt_release

cp /rom/etc/luci-i18n-athena-led-zh-cn_0_all.ipk /etc/
cp /rom/etc/luci-app-athena-led_0.0.4-20241023_all.ipk /etc/

cat <<EOF > /etc/rc.local
opkg install /etc/luci-app-athena-led_0.0.4-20241023_all.ipk
opkg install /etc/luci-i18n-athena-led-zh-cn_0_all.ipk
rm -rf /etc/luci-app-athena-led_0.0.4-20241023_all.ipk
rm -rf /etc/luci-i18n-athena-led-zh-cn_0_all.ipk
exit 0
EOF



# /etc/init.d/network restart

exit 0

