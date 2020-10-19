# Cross-site Scripting (XSS)
Cross-site scripting consists of injecting malicious code into a vulnerable site. When implemented actively, it aims to access any: cookies, session tokens, or other sensitive information retained by the browser and used with that site.  

# Stored XXS attack / data URI XSS

### Step 1
Navigate to http://0.0.0.0/index.php
> * Inspect page and find the _src="http://0.0.0.0/index.php?page=media&src=nsa"_ link
> * Kinda redirects to media source: _nsa_ image

### Step 2
> * Inspect page, look up the head section.
> * You will see that no content-security-policy is specified, this allows for in-line js exploitation is uploaded
> * Requires base64 encoded string as it is used to transfer data over a medium that only supports ASCII formats, such as email messages on Multipurpose Internet Mail Extension (MIME) and Extensible Markup Language (XML) data.  

### Step 3
> * Attack
> 1. <script>alert()</script> -> base64 encode => PHNjcmlwdD5hbGVydDwvc2NyaXB0Pg==
> 2. http://192.168.1.68/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydDwvc2NyaXB0Pg==
> 3. **THE FLAG IS : 928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D**

https://portswigger.net/web-security/cross-site-scripting/content-security-policy

http://cubalo.github.io/blog/2014/01/04/bypassing-xss-filters-using-data-uris/

https://www.base64decode.org/

## Prevention
> * Filter input on arrival: sanitize input.
> * Use appropriate response headers: use the Content-Type and X-Content-Type-Options headers to ensure that browsers interpret the responses in the way you intend.
> * Content Security Policy.
> * https://portswigger.net/web-security/cross-site-scripting