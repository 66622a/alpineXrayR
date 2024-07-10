#!/bin/sh

# 停止 XrayR 服务
/etc/init.d/XrayR stop

# 禁用 XrayR 服务
rc-update del XrayR default

# 删除 XrayR 的二进制文件和配置文件
rm -rf /etc/XrayR

# 删除 XrayR 的软链接
rm /usr/bin/XrayR

# 删除 XrayR 服务文件
rm /etc/init.d/XrayR

echo "卸载完成！"
