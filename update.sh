#!/bin/bash
# // Update
#By PAKYAVPN
apt-get -y autoremove;
apt upgrade && apt replace -y

echo "Start Update"
sleep 5

# // Download
cd /usr/bin
wget -O add-host "https://raw.githubusercontent.com/huaweipadu/padu/main/add-host.sh"
wget -O add-host "https://raw.githubusercontent.com/huaweipadu/padu/main/add-host.sh"
wget -O about "https://raw.githubusercontent.com/huaweipadu/padu/main/about.sh"
wget -O menu "https://raw.githubusercontent.com/huaweipadu/padu/main/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/huaweipadu/padu/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/huaweipadu/padu/main/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/huaweipadu/padu/main/hapus.sh"
wget -O member "https://raw.githubusercontent.com/huaweipadu/padu/main/member.sh"
wget -O delete "https://raw.githubusercontent.com/huaweipadu/padu/main/delete.sh"
wget -O cek "https://raw.githubusercontent.com/huaweipadu/padu/main/cek.sh"
wget -O restart "https://raw.githubusercontent.com/huaweipadu/padu/main/restart.sh"
wget -O speedtest-cli "https://raw.githubusercontent.com/huaweipadu/padu/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/huaweipadu/padu/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/huaweipadu/padu/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/huaweipadu/padu/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/huaweipadu/padu/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/huaweipadu/padu/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/huaweipadu/padu/main/tendang.sh"
wget -O change-port "https://raw.githubusercontent.com/huaweipadu/padu/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/huaweipadu/padu/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/huaweipadu/padu/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/huaweipadu/padu/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/huaweipadu/padu/main/port-tr.sh"
wget -O port-squid "https://raw.githubusercontent.com/huaweipadu/padu/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/huaweipadu/padu/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/huaweipadu/padu/main/port-vless.sh"
wget -O port-xray "https://raw.githubusercontent.com/huaweipadu/padu/main/port-xray.sh"
wget -O wbmn "https://raw.githubusercontent.com/huaweipadu/padu/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/huaweipadu/padu/main/xp.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-vmess.sh"
wget -O menu-vless "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-vless.sh"
wget -O menu-ss "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-ss.sh"
wget -O menu-ssr "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-ssr.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-trojan.sh"
wget -O menu-wg "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-wg.sh"
wget -O update "https://raw.githubusercontent.com/huaweipadu/padu/main/update.sh"
wget -O menu-ssh "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-ssh.sh"
wget -O menu-xray "https://raw.githubusercontent.com/huaweipadu/padu/main/menu-xray.sh"
wget -O running "https://raw.githubusercontent.com/huaweipadu/padu/main/running.sh"
chmod +x add-host
chmod +x running
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest-cli
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x port-xray
chmod +x wbmn
chmod +x xp
chmod +x menu-vmess
chmod +x menu-vless
chmod +x menu-ss
chmod +x menu-ssr
chmod +x menu-trojan
chmod +x menu-wg
chmod +x update
chmod +x menu-ssh
chmod +x menu-xray
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix Menu"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot