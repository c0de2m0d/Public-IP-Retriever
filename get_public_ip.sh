#!/bin/bash

#check if command exists
command_exists(){
	type "$1" &> /dev/null
}

#main function
fetch_public_ip() {
  local url=$1
  local ip
  
  if [ url == "host_opendns" ];then
    #fetch ip using 'host'
    ip=$(timeout 3 host myip.opendns.com resolver1.opendns.com | awk '/has address/ {print $4}')
  elif [ url == "dig_google_dns" ]; then
	#fetch ip using 'dig'
	ip=$(timeout 3 dig TXT +short o-o.myaddr.1.google.com @ns1.google.com)
  else
    if command_exists curl; then
  	  if [ "$url" == "ipecho.net" ]; then
  		  ip=$(curl -s --max-time 1 $url | grep -oP '(?<=Your IP is )[^<]+')
  		else
  			ip=$(curl -s --max-time 1 $url)
  		fi
  	elif command_exists wget; then
  		if [ "$url" == "ipecho.net" ]; then
  			ip=$(wget -q0- --timeout=1 $url | grep -oP '(?<=Your IP is )[^<]+')
  		else
  			ip=$(wget -q0- --timeout=1 $url)
  		fi
  	else
  		echo "Neither curl nor wget is available"
  		return 1
  	fi
  fi

  if [ $? -eq 0 ] && [ -n "$ip" ]; then
  	echo "$url says $ip"
  else
  	echo "Error fetching IP from $url"
  fi
}


#method list
declare -a methods=(
	"checkip.amazonaws.com"
	"whatismyip.akamai.com"
	"icanhazip.com"
	"ipinfo.io/ip"
	"ifconfig.me"
	"ifconfig.co"
	"ipecho.net"
	"api.ipify.org"
	"wtfismyip.com/text"
	"ident.me"
	"myexternalip.com/raw"
	"host_opendns"
	"dig_google_dns"
	"All"
)


#display options to the user
echo "Select a method/service to learn your public IP address:"
for i in "${!methods[@]}"; do
	echo "$((i+1))) ${methods[$i]}"
done

#get user choice
read -p "Enter your choice (1-${#methods[@]}): " choice

#validate and execute the choice
if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -ge 1 ] && [ "$choice" -le  "${#methods[@]}" ]; then
	selected="${methods[$choice-1]}"
	if [ "$selected" == "All" ]; then
		echo "Checking all..."
		for method in "${methods[@]}"; do
			[ "$method" != "All" ] && fetch_public_ip "$method"
		done
	else
		fetch_public_ip "$selected"
	fi
else
	echo "Invalid choice.Exiting"
fi
