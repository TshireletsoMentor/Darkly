IP="192.168.8.111"
mkdir ./DOWNLOADS
wget -r -l=inf -A README -e robots=off -P ./DOWNLOADS -q http://$IP/.hidden/
grep -r [0-9] ./DOWNLOADS/
rm -rf ./DOWNLOADS