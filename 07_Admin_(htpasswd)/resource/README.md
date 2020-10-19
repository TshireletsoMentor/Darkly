# Bypassing Basic HTTP Authentication
Basic authentication(BA) is a simple authentication scheme built into the HTTP protocol. BA credentials are within the .htpasswd, these contain in addition to the user credentials, some authentication rules that a HTTP user-agent must adhere to grant access to server information. The driver for BA is held within a .htaccess file, it is a configuration file.

### Step 1
Navigate to http://0.0.0.0/robots.txt
> * robots.txt is a text file with instructions for search engine crawlers. It defines which areas of a website crawlers are allowed/ not allowed to search.
> * As we are looking for exploits, we have a look at the directories robots.txt does not want us to access.
> * http://0.0.0.0/robots.txt returns ./hidden and ./htaccess

### Step 2
* Attack
> 1. Download the .htaccess file, file contents _8621ffdbc5698829397d97767ac13db3_
> 2. md5 decrypt -> 8621ffdbc5698829397d97767ac13db3 => dragon 
> 3. sha256 encrypt -> dragon => a9c43be948c5cabd56ef2bacffb77cdaa5eec49dd5eb0cc4129cf3eda5f0e74c
> * **THE FLAG IS : a9c43be948c5cabd56ef2bacffb77cdaa5eec49dd5eb0cc4129cf3eda5f0e74c**

https://defendtheweb.net/discussion/1159-bypassing-htaccesshtpasswd-based-authentication

https://swagger.io/docs/specification/authentication/basic-authentication/

https://www.seobility.net/en/wiki/Robots.txt?utm_source=google&utm_medium=cpc&utm_campaign=wiki_en&utm_term={robots%20txt}&utm_content=lp_robots.txt&gclid=CjwKCAjw5p_8BRBUEiwAPpJO6_YoeQz0Cyla295N7Obb81Wh6yiK6cIea-DxB4K05ZQsAL4-ZubSRhoC8fAQAvD_BwE

https://www.md5online.org/md5-decrypt.html

https://md5decrypt.net/en/Sha256/#answer

## Prevention
> * Prevent the access of .htaccess
> * Prevent the editing of .htacess
> * https://perishablepress.com/detect-attacks-php-htaccess/
> * https://htaccessbook.com/control-request-methods/