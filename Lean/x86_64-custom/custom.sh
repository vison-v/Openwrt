  
#!/bin/bash
#=================================================
rm -Rf feeds/packages/net/{smartdns,aria2} package/lean/{qBittorrent,luci-app-baidupcs-web}
##############加载自定义app################
git clone https://github.com/garypang13/luci-app-baidupcs-web package/openwrt-packages/luci-app-baidupcs-web
git clone https://github.com/garypang13/openwrt-smartdns package/openwrt-packages/openwrt-smartdns
git clone https://github.com/garypang13/aria2 package/openwrt-packages/aria2
git clone https://github.com/garypang13/openwrt-static-qb package/openwrt-packages/openwrt-static-qb
git clone https://github.com/garypang13/luci-app-dnsfilter package/openwrt-packages/luci-app-dnsfilter
git clone https://github.com/garypang13/luci-app-bypass package/openwrt-packages/luci-app-bypass
##############菜单整理美化#################
./scripts/feeds update -a
./scripts/feeds install -a
sed -i 's/BaiduPCS Web/百度网盘/g' package/openwrt-packages/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua

sed -i 's/+qBittorrent/+qBittorrent-Enhanced-Edition/g' package/lean/luci-app-qbittorrent/Makefile

sed -i 's/"Bypass"/"畅游国际"/g' package/openwrt-packages/luci-app-bypass/luasrc/controller/bypass.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/controller/bypass.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/model/cbi/bypass/client-config.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/model/cbi/bypass/server-config.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/model/cbi/bypass/server.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/model/cbi/bypass/servers.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/check.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/checkport.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/kcptun_version.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/refresh.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/server_list.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/status.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/status_bottom.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/subscribe.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/trojan_go_version.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/v2ray_version.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-bypass/luasrc/view/bypass/xray_version.htm

sed -i 's/DNSFilter/广告过滤/g' package/openwrt-packages/luci-app-dnsfilter/luasrc/controller/dnsfilter.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-dnsfilter/luasrc/controller/dnsfilter.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-dnsfilter/luasrc/model/cbi/dnsfilter/base.lua
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-dnsfilter/luasrc/view/dnsfilter/dnsfilter_status.htm
sed -i 's/services/vpn/g' package/openwrt-packages/luci-app-dnsfilter/luasrc/view/dnsfilter/refresh.htm
