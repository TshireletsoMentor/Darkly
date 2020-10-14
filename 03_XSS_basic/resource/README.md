# Cross-site Scripting (XSS)
Cross-site scripting consists of injecting malicious code into a vulnerable site. When implemented actively, it aims to access any: cookies, session tokens, or other sensitive information retained by the browser and used with that site.  

# Stored XXS attack

### Step 1
Navigate to http://0.0.0.0/index.php?page=feedback
> * Input any name and any message, feel out feedback form.  

### Step 2
> * Inspect page, test out limits of form validation: empty name input and/or empty message input  
> * Only name input needs validation, and thus was the flag hint  

### Step 1
> * Attack
> 1. <script>alert()</script>
> * input _<script>al_ in name field  
**The flag is : 0FBB54BBF7D099713CA4BE297E1BC7DA0173D8B3C21C1811B916A3A86652724E**

* https://owasp.org/www-community/attacks/xss/