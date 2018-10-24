#!/bin/bash
#issued on : 24 Oktober 2018
#coded By ALIF PUTRA DARMAWAN
waktu=$(date '+%Y-%m-%d %H:%M:%S')
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
LIGHTGREEN="\e[92m"
MARGENTA="\e[35m"
BLUE="\e[34m"
BOLD="\e[1m"
NOCOLOR="\e[0m"
header(){
printf "${GREEN}
         ####################################
         ####################################
         #######                      #######
         #######                      #######${BLUE}
         #######  ALIF PUTRA DARMAWAN #######
         ###############      ###############
         ###############      ###############
         ###############      ###############
         ###############      ###############${RED}
         #######    ####      ####    #######
         #######    ####      ####    #######
         #######    ##############    #######
         #######    ##############    #######
         #######       HACKCOD3X      #######
         ####################################
         ####################################${NOCOLOR}
         ------------------------------------
              Facebook Bot Bash Version
                    By Hackcod3x
         ------------------------------------
"
}
tatsumi(){
    typena="$1"
    tokenfb="$2"
    curlnya=$(curl -s "http://48.nakocoders.org/api/reaction/api.php?type=$1&tokenna=$2" -L)
    kontenID=$(echo $curlnya | grep -Po '(?<=Success Like : )[^<span]*')
    printf "${GREEN}$kontenID\n"
}
header
echo "Method : "
echo "1. Bot Reaction"
echo "2. Delete Status"
echo "3. Delete Friends"
echo "4. Bot Komen Copas Status"
read -p "Choose Your Method : " method;
##BOT REACTION
if [ $method -eq 1 ]; then
    read -p "Masukan Type Reaction : " typena;
    read -p "Masukan Token FB : " tokenfb;
    for pwna in $typena; do
        tatsumi $pwna $tokenfb
done
##DELETE STATUS
elif [ $method -eq "2" ]; then
		read -p "Masukan Token FB : " token
		read -p "Masukan Jumlah Delete : " limit
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curlnya=$(curl -s "http://48.nakocoders.org/api/delstatus/api.php?tokenna=$token&jumlahna=$limit" -L)
    	kontenID=$(echo $curlnya | grep -Po '(?<=Success Delete : )[^<span]*')
    	printf "${GREEN}$kontenID\n"
done
##DELETE FRIEND
elif [ $method -eq "3" ]; then
    	read -p "Masukan Token FB : " tokenfb;
    	read -p "Masukan Jumlah Delete : " limit;
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curlnya=$(curl -s "http://48.nakocoders.org/api/deletefriend/curl.php?tokenna=$tokenfb&jumlahna=$limit" -L)
    	status=$(echo $curlnya | grep -Po '(?<=green"> )[^<]*')
    	kontenID=$(echo $curlnya | grep -Po '(?<=Success Delete : )[^<span]*')
    	printf "${GREEN}$kontenID\n"
    	
done
##KOMEN STATUS
elif [ $method -eq "4" ]; then
    	read -p "Masukan Token FB : " tokenfb;
    	read -p "Masukan ID GRUP/FB TARGET/KOSONGKAN : " target;
    	read -p "Masukan Jumlah : " limit;
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curlnya=$(curl -s "http://48.nakocoders.org/api/komencopas/api.php?tokenna=$tokenfb&jumlah=$limit&target=$target" -L)
    	status=$(echo $curlnya | grep -Po '(?<=green"> )[^<]*')
    	kontenID=$(echo $curlnya | grep -Po '(?<=Success => )[^<span]*')
    	printf "${GREEN}$kontenID\n"
    	
done
fi
