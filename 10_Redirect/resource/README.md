# Unvalidated Redirects
Unvalidated redirect vulnerabilities occur when an attacker is able to redirect a user to an untrusted site when the user visits a link located on a trusted website. This vulnerability is also often called Open Redirect.

In this instance we were required to add a destination to our link, only demonstrate the vulnerability of a site to use an external url as a source for their redirect.

### Step 1
* Attack
Navigate to http://0.0.0.0/ *inspect the footer section
> * edit the redirect site source _http://0.0.0.0/index.php?page=redirect&site=#javascript:alert(document.cookie)_
> * this if allowed to redirect would show the current cookie 
**B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3**


https://blog.detectify.com/2016/08/15/owasp-top-10-unvalidated-redirects-and-forwards-10/

https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/11-Client_Side_Testing/04-Testing_for_Client_Side_URL_Redirect