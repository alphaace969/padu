#!/bin/bash
clear
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGWHITE='\e[0;47;30m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://raw.githubusercontent.com/huaweipadu/ip/main/access | grep $MYIP )
if [ $MYIP = $IZIN ]; then
    echo -e ""
    clear
else
  echo -e ""
    echo -e "${green}ACCESS DENIED...PM TELEGRAM @anakjati567${NC}"
    exit 1
fi
# DNS Patch
tipeos2=$(uname -m)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
download=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev  | awk '{print $2}' | paste -sd+ - | bc`
downloadsize=$(($download/1073741824))
# Upload
upload=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev | awk '{print $10}' | paste -sd+ - | bc`
uploadsize=$(($upload/1073741824))
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# Shell Version
shellversion=""
shellversion=Bash
shellversion+=" Version" 
shellversion+=" ${BASH_VERSION/-*}" 
versibash=$shellversion
# Getting OS Information
source /etc/os-release
Versi_OS=$VERSION
ver=$VERSION_ID
Tipe=$NAME
URL_SUPPORT=$HOME_URL
basedong=$ID
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
domain=$(cat /etc/v2ray/domain)
Sver=$(cat /home/version)
tele=$(cat /home/contact)
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	uram=$( free -m | awk 'NR==2 {print $3}' )
	fram=$( free -m | awk 'NR==2 {print $4}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
clear
echo -e "$green CPU Model            :$Lyellow$cname"$NC
echo -e "$green CPU Frequency        :$Lyellow$freq MHz"$NC
echo -e "$green Number Of Cores      :$Lyellow $cores"$NC
echo -e "$green CPU Usage            :$Lyellow $cpu_usage"$NC
echo -e "$green Operating System     :$Lyellow "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`$NC
echo -e "$green Kernel               :$Lyellow `uname -r`"$NC
echo -e "$green Bash Ver             :$Lyellow $versibash"$NC
echo -e "$green Total Amount Of RAM  :$Lyellow $tram MB"$NC
echo -e "$green Used RAM             :$Lyellow $uram MB"$NC
echo -e "$green Free RAM             :$Lyellow $fram MB"$NC
echo -e "$green System Uptime        :$Lyellow $uptime $DF( From VPS Booting )"$NC
echo -e "$green Download             :$Lyellow $downloadsize GB ( From Startup / VPS Booting )"$NC
echo -e "$green Upload               :$Lyellow $uploadsize GB ( From Startup / VPS Booting )"$NC
echo -e "$green ISP NAME             :$Lyellow $ISP"$NC
echo -e "$green IP VPS               :$Lyellow $IPVPS"$NC
echo -e "$green DOMAIN               :$Lyellow $domain"$NC
echo -e "$green City                 :$Lyellow $CITY"$NC
echo -e "$green SERVER               :$Lyellow $ISP"$NC
echo -e "$green Script Version       :$Lyellow $Sver"
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "${BGWHITE}                     [ PREMIUM SCRIPT ]                     ${NC}"
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
figlet MRDEBIANVPN | lolcat
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "${BGWHITE}                     [ MAIN MENU ]                          ${NC}"
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "$PURPLE (•1) $NC $Lyellow PANEL SSH & OPENVPN"$NC
echo -e "$PURPLE (•2) $NC $Lyellow PANEL WIREGUARDS"$NC
echo -e "$PURPLE (•3) $NC $Lyellow PANEL SSR"$NC
echo -e "$PURPLE (•4) $NC $Lyellow PANEL SS"$NC
echo -e "$PURPLE (•5) $NC $Lyellow PANEL VMESS"$NC
echo -e "$PURPLE (•6) $NC $Lyellow PANEL VLESS"$NC
echo -e "$PURPLE (•7) $NC $Lyellow PANEL XRAY"$NC
echo -e "$PURPLE (•8) $NC $Lyellow PANEL TROJAN"$NC
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "${BGWHITE}                     [ SISTEM MENU ]                        ${NC}"
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "$PURPLE (•9) $NC $Lyellow ADD NEW SUBDOMAIN $NC     $PURPLE (17) $NC $Lyellow Limit Bandwith $NC"
echo -e "$PURPLE (10) $NC $Lyellow RENEW CERTIFICATE $NC     $PURPLE (18) $NC $Lyellow Check Usage $NC"
echo -e "$PURPLE (11) $NC $Lyellow CHANGE PORT $NC           $PURPLE (19) $NC $Lyellow Reboot VPS $NC"
echo -e "$PURPLE (12) $NC $Lyellow AUTOBACKUP DATA $NC       $PURPLE (20) $NC $Lyellow Speedtest VPS $NC"
echo -e "$PURPLE (13) $NC $Lyellow BACKUP DATA VPS  $NC      $PURPLE (21) $NC $Lyellow Update Script $NC"
echo -e "$PURPLE (14) $NC $Lyellow Restore Data Vps $NC      $PURPLE (22) $NC $Lyellow Displaying System $NC"
echo -e "$PURPLE (15) $NC $Lyellow WEBMIN MENU $NC           $PURPLE (23) $NC $Lyellow Info Script Auto $NC"
echo -e "$PURPLE (16) $NC $Lyellow UPDATE TO KERNEL $NC      $PURPLE (24) $NC $Lyellow Show System Status $NC"
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e "$Lyellow Premium VPS by @MrDebian"$NC
echo -e "$Lyellow Thank you for using script by PAKYAVPN"$NC
echo -e "${Lred}════════════════════════════════════════════════════════════${NC}"
echo -e ""
echo -e "    [Ctrl + C] For exit from main menu"
echo -e ""
read -p "    Select From Options [1-24 or x]: " menu
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
