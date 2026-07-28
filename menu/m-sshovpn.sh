#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
# CARI APA
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m       • AMBERVPN SSH MENU •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Create SSH & WS Account "
echo -e " [\e[36m•2\e[0m] Delete SSH & WS Account "
echo -e " [\e[36m•3\e[0m] List Member SSH & WS "
echo -e " [\e[36m•4\e[0m] Change Banner SSH "
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO NT MENU\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; hapus ; exit ;;
3) clear ; member ; exit ;;
4) clear ; nano /etc/issue.net ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo " wrong option " ; sleep 1 ; m-sshovpn ;;
esac
