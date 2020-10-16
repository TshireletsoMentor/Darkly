# Unrestricted directory travesal attack
This attack is also known as “dot-dot-slash”, “directory traversal”, “directory climbing” and “backtracking”, aims to access files and directories that are stored outside the web root folder.

This exploit is only implied in this examply, as actually achieving this would put the sandbox at risk.

### Step 1
Navigate to http://0.0.0.0/robots.txt
> * robots.txt is a text file with instructions for search engine crawlers. It defines which areas of a website crawlers are allowed/ not allowed to search.
> * As we are looking for exploits, we have a look at the directories robots.txt does not want us to access.
> * http://0.0.0.0/robots.txt returns ./hidden and ./htaccess

### Step 2
* Attack
> 1. Navigate to http://0.0.0.0/.hidden
> 2. If you follow each link to its end, you will find a README, you thus need to download all these README's and inspect them
> 3. Run the guess.sh script to find the flag

> * **THE FLAG IS : 99dde1d35d1fdd283924d84e6d9f1d820**

https://owasp.org/www-community/attacks/Path_Traversal