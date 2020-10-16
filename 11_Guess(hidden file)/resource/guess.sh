IP=`head -n 1 '../../src/env_IP'`
IP_len=${#IP}
if [[ IP_len -gt 0 ]]
then
  continue
else
  echo "Input server IP address:" 
  read IP
fi

mkdir ./DOWNLOADS
wget -r -l=inf -A README -e robots=off -P ./DOWNLOADS -q http://$IP/.hidden/
grep -r [0-9] ./DOWNLOADS/
rm -rf ./DOWNLOADS