# Brute Force
The basis of a brute force consists of an attacker submitting many passwords or passphrases with the hope of eventually guessing correctly.

### Step 1
Navigate to http://0.0.0.0/index.php?page=signin
> * As you can see we do not know the password
> * Trial and error username and password inputs, according to .htaccess, the username should be root

### Step 2
Use cURL to implement brute force
> * use common usernames and passwords https://github.com/danielmiessler/SecLists/tree/master/Usernames
> * implement sh bruteForce.sh
> * username => admin / root
> * password => shadow
**The flag is : b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b2**

https://www.varonis.com/blog/brute-force-attack/

