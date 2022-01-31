#!/bin/bash
BGGREEN='\e[1;42'
BGBLUE='\e[1;44m'
NC='\e[0m'
BGRED='\e[1;44m'
clear
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
domain=$(cat /etc/v2ray/domain)
clear
echo -e "* TIME          : $jam"
echo -e "* DAY           : $hari"
echo -e "* DATE          : $tnggl"
echo -e "* SERVER        : $ISP"
echo -e "* City          : $CITY"
echo -e "* IP VPS        : $IPVPS"
echo -e "* DOMAIN        : $domain"
echo -e ""
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
echo -e " ${BGBLUE}                     PREMIUM SCRIPT                               ${NC}"
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
figlet PakyaVPN | lolcat
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
echo -e " ${BGBLUE}                     MAIN MENU                                    ${NC}"
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
echo -e "\e[0m                                                               "
echo -e "\e[1;31m* [1]\e[0m  \e[0;97m: SSH & OVPN PANEL\e[0m"
echo -e "\e[1;31m* [2]\e[0m  \e[0;97m: WIREGUARD PANEL\e[0m"
echo -e "\e[1;31m* [3]\e[0m  \e[0;97m: SSR PANEL\e[0m"
echo -e "\e[1;31m* [4]\e[0m  \e[0;97m: SHADOWSOCKS PANEL\e[0m"
echo -e "\e[1;31m* [5]\e[0m  \e[0;97m: VMESS PANEL\e[0m"
echo -e "\e[1;31m* [6]\e[0m  \e[0;97m: VLESS PANEL\e[0m"
echo -e "\e[1;31m* [7]\e[0m  \e[0;97m: XRAY PANEL\e[0m"
echo -e "\e[1;31m* [8]\e[0m  \e[0;97m: TROJAN PANEL\e[0m"
echo -e ""
echo -e  " ═══════════════════════════-SYSTEM-═══════════════════════════════" | lolcat
echo -e "\e[0m                                                               "
echo -e "\e[1;31m* [9]\e[0m  \e[0;97m: Add Or Change Subdomain Host For VPS\e[0m"
echo -e "\e[1;31m* [10]\e[0m \e[0;97m: Renew Certificate \e[0m"
echo -e "\e[1;31m* [11]\e[0m \e[0;97m: Change Port Of Some Service\e[0m"
echo -e "\e[1;31m* [12]\e[0m \e[0;97m: Autobackup Data VPS\e[0m"
echo -e "\e[1;31m* [13]\e[0m \e[0;97m: Backup Data VPS\e[0m"
echo -e "\e[1;31m* [14]\e[0m \e[0;97m: Restore Data VPS\e[0m"
echo -e "\e[1;31m* [15]\e[0m \e[0;97m: Webmin Menu\e[0m"
echo -e "\e[1;31m* [16]\e[0m \e[0;97m: Update To Latest Kernel\e[0m"
echo -e "\e[1;31m* [17]\e[0m \e[0;97m: Limit Bandwith Speed Server\e[0m"
echo -e "\e[1;31m* [18]\e[0m \e[0;97m: Check Usage of VPS Ram\e[0m"
echo -e "\e[1;31m* [19]\e[0m \e[0;97m: Reboot VPS\e[0m"
echo -e "\e[1;31m* [20]\e[0m \e[0;97m: Speedtest VPS\e[0m"
echo -e "\e[1;31m* [21]\e[0m \e[0;97m: Update To Latest Script Version\e[0m"
echo -e "\e[1;31m* [22]\e[0m \e[0;97m: Displaying System Information\e[0m"
echo -e "\e[1;31m* [23]\e[0m \e[0;97m: Info Script Auto Install\e[0m"
echo -e "\e[1;31m* [24]\e[0m \e[0;97m: Show System Status \e[0m"
echo -e "\e[1;31m* [25]\e[0m \e[0;97m: Exit From VPS \e[0m"
echo -e ""
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
echo -e " ${BGBLUE}                     PAKYAVPN                                     ${NC}"
echo -e  " ══════════════════════════════════════════════════════════════════" | lolcat
echo -e "\e[0m                                                               "
echo -e ""
read -p "        Select From Options [1-25 or x]: " menu
echo -e ""
case $menu in
1)
menu-ssh
;;
2)
menu-wg
;;
3)
menu-ssr
;;
4)
menu-ss 
;;
5)
menu-vmess
;;
6)
menu-vless 
;;
7)
menu-xray 
;;
8)
menu-trojan 
;;
9)
add-host
;;
10)
certv2ray
;;
11)
change-port
;;
12)
autobackup
;;
13)
backup
;;
14)
restore
;;
15)
wbmn
;;
16)
kernel-updt
;;
17)
limit-speed
;;
18)
ram
;;
19)
reboot
;;
20)
speedtest-cli
;;
21)
update
;;
22)
info
;;
23)
about
;;
24)
running
;;
25)
exit
;;
x)
exit
menu
;;
*)
echo " Please enter an correct number!!"
;;
esac