#!/bin/bash
clear
if  [ ! -e '/usr/bin/wget' ]; then
    echo "BOTTables Error: wget package not found. You must install wget to run this script."
    exit 1
fi

if  [ ! -e '/usr/bin/dos2unix' ]; then
    echo "BOTTables Error: dos2unix package not found. You must install dos2unix to run this script."
    exit 1
fi

#Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;36m'
PLAIN='\033[0m'

#Download
MIRROR='https://raw.githubusercontent.com/Xenic28/bottables/main'

#Script
clear
printf "${YELLOW}"
echo " ____        _   _        _     _                 _      "
echo "| __ )  ___ | |_| |_ __ _| |__ | | ___  ___   ___| |__   "
echo "|  _ \ / _ \| __| __/ _  | _  \| |/ _ \/ __| / __|  _ \  "
echo "| |_) | (_) | |_| || (_| | |_) | |  __/\__ \_\__ \ | | | "
echo "|____/ \___/ \__|\__\__ _|_ __/|_|\___||___(_)___/_| |_| "
echo ""
echo "Github: https://github.com/Xenic28/bottables"
sleep 4
echo ""
echo "1. Activate / Update Bottables (IPv4)"
echo ""
echo "2. Activate / Update Bottables (IPv6)"
echo ""
echo "3. Deactivate Bottables (IPv4)"
echo ""
echo "4. Deactivate Bottables (IPv6)"
echo ""
echo "5. Delete Bottables"
echo ""
echo "6. Exit"
echo "" 
read -p "Choose a Option: " option
clear
if [ "$option" == "1" ]
then
   clear
   echo ""
   echo "Activating / Updating BOTTables (IPv4) this can take a while..."
   echo ""
   sleep 5
   clear
   rm ipblock.list
   rm blockscriptv4.sh
   rm unblockscriptv4.sh
   rm terminalcolorfix.sh
   wget ${MIRROR}/ipblock.list
   wget ${MIRROR}/blockscriptv4.sh
   wget ${MIRROR}/unblockscriptv4.sh
   wget ${MIRROR}/terminalcolorfix.sh
   dos2unix ipblock.list
   dos2unix blockscriptv4.sh
   dos2unix unblockscriptv4.sh
   dos2unix terminalcolorfix.sh
   chmod 777 terminalcolorfix.sh
   chmod 777 ipblock.list 
   chmod 777 blockscriptv4.sh
   chmod 777 unblockscriptv4.sh
   clear 
   echo "Blocking IP Adresses (IPv4) this can take a while..."
   ./unblockscriptv4.sh
   ./blockscriptv4.sh
   clear
   echo ""
   echo "BOTTables successfully Activated / Updated (IPv4)"
   echo ""
   printf "${PLAIN}"
   exit 0

elif [ "$option" == "2" ]
then
   clear
   echo ""
   echo "Activating / Updating BOTTables (IPv6) this can take a while..."
   echo ""
   sleep 5
   clear
   rm ip6block.list
   rm blockscriptv6.sh
   rm unblockscriptv6.sh
   rm terminalcolorfix.sh
   wget ${MIRROR}/ip6block.list
   wget ${MIRROR}/blockscriptv6.sh
   wget ${MIRROR}/unblockscriptv6.sh
   wget ${MIRROR}/terminalcolorfix.sh
   dos2unix ip6block.list
   dos2unix blockscriptv6.sh
   dos2unix unblockscriptv6.sh
   dos2unix terminalcolorfix.sh
   chmod 777 terminalcolorfix.sh
   chmod 777 ipblock.list 
   chmod 777 blockscriptv6.sh
   chmod 777 unblockscriptv6.sh
   clear 
   echo "Blocking IP Adresses (IPv6) this can take a while..."
   ./unblockscriptv6.sh
   ./blockscriptv6.sh
   clear
   echo ""
   echo "BOTTables successfully Activated / Updated (IPv6)"
   echo ""
   printf "${PLAIN}"
   exit 0

elif [ "$option" == "3" ]
then
   clear
   echo ""
   echo "Deactivating BOTTables (IPv4) this can take a while..."
   echo ""
   sleep 5
   clear
   rm ipblock.list
   rm unblockscriptv4.sh
   rm terminalcolorfix.sh
   wget ${MIRROR}/ipblock.list
   wget ${MIRROR}/unblockscriptv4.sh
   wget ${MIRROR}/terminalcolorfix.sh
   dos2unix ipblock.list
   dos2unix unblockscriptv4.sh
   dos2unix terminalcolorfix.sh
   chmod 777 terminalcolorfix.sh
   chmod 777 ipblock.list 
   chmod 777 unblockscriptv4.sh
   clear 
   echo "Unblocking IP Adresses (IPv4) this can take a while..."
   ./unblockscriptv4.sh
   clear
   echo ""
   echo "BOTTables successfully Deactivated (IPv4)"
   echo ""
   printf "${PLAIN}"
   exit 0

elif [ "$option" == "4" ]
then
   clear
   echo ""
   echo "Deactivating BOTTables (IPv6) this can take a while..."
   echo ""
   sleep 5
   clear
   rm ip6block.list
   rm unblockscriptv6.sh
   rm terminalcolorfix.sh
   wget ${MIRROR}/ip6block.list
   wget ${MIRROR}/unblockscriptv6.sh
   wget ${MIRROR}/terminalcolorfix.sh
   dos2unix ip6block.list
   dos2unix unblockscriptv6.sh
   dos2unix terminalcolorfix.sh
   chmod 777 terminalcolorfix.sh
   chmod 777 ip6block.list 
   chmod 777 unblockscriptv6.sh
   clear 
   echo "Unblocking IP Adresses (IPv6) this can take a while..."
   ./unblockscriptv6.sh
   clear
   echo ""
   echo "BOTTables successfully Deactivated (IPv6)"
   echo ""
   printf "${PLAIN}"
   exit 0

elif [ "$option" == "5" ]
then
   clear
   echo ""
   echo "Deleting BOTTables..."
   echo ""
   sleep 3
   rm blockscriptv4.sh 
   rm blockscriptv6.sh
   rm unblockscriptv4.sh 
   rm unblockscriptv6.sh
   rm ip6block.list
   rm ipblock.list
   rm terminalcolorfix.sh
   rm bottables.sh
   printf "${PLAIN}"
   exit 0

elif [ "$option" == "6" ]
then
   printf "${PLAIN}"
   clear
   exit 0

else
   printf "${PLAIN}"
   clear
   exit 0
fi
