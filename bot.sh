#!/bin/bash
#issued on : MEMEK
#coded By ALIF PUTRA DARMAWAN
waktu=$(date '+%Y-%m-%d %H:%M:%S')
green="\e[1;32m"
red="\e[1;31m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
LIGHTGREEN="\e[92m"
MARGENTA="\e[35m"
BLUE="\e[34m"
BOLD="\e[1m"
NOCOLOR="\e[0m"
clear
header(){
printf "${GREEN}
         ##############################################
         ##             FACEBOOK BOT MUX.            ##${BLUE}
         ##          By : ALIF PUTRA DARMAWAN        ##${RED}
         ##            HACK COD3X OFFICIAL.          ##${NOCOLOR}
	       ##############################################${GREEN}
"
}
rahim(){
    typena="$1"
    tokenfb="$2"
    curl -s "http://48.nakocoders.org/api/reaction/api.php?type=$1&tokenna=$2"
}
header
echo "Masukan Pilihan : "
echo "1. Auto Bot Reaction"
echo "2. Auto Delete Status"
echo "3. Auto Delete Friends"
echo "4. Auto Bot Komen Copas Status Orang"
read -p "Masukan Nomor Pilihan > " method;
##BOT REACTION
if [ $method -eq 1 ]; then
    read -p "Masukan Type Reaction : " typena;
    read -p "Masukan Token FB : " tokenfb;
    for pwna in $typena; do
        rahim $pwna $tokenfb
done
##DELETE STATUS
elif [ $method -eq "2" ]; then
		read -p "Masukan Token FB : " token
		read -p "Masukan Jumlah Delete : " limit
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curl -s "http://48.nakocoders.org/api/delstatus/api.php?tokenna=$token&jumlahna=$limit"
done
##DELETE FRIEND
elif [ $method -eq "3" ]; then
    	read -p "Masukan Token FB : " tokenfb;
    	read -p "Masukan Jumlah Delete : " limit;
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curl -s "http://48.nakocoders.org/api/deletefriend/curl.php?tokenna=$tokenfb&jumlahna=$limit"
    	
    	
done
##KOMEN STATUS
elif [ $method -eq "4" ]; then
    	read -p "Masukan Token FB : " tokenfb;
    	read -p "Masukan ID GRUP/FB TARGET/KOSONGKAN : " target;
    	read -p "Masukan Jumlah : " limit;
		echo -ne "\n"
		for i in $(seq 1 $limit):
  	do
    	curl -s "http://48.nakocoders.org/api/komencopas/api.php?tokenna=$tokenfb&jumlah=$limit&target=$target"
done
fi
