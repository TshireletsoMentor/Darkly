# Broken Access Control
This attack concerns the lack of restrictions on what authenticated users are allowed to do. Attackers can exploit these flaws to access unauthorized functionality and/or data, such as access other users’ accounts, view sensitive files, modify other users’ data, change access rights, etc.

In this case, the page checks the value of the forgotten password, on the forgotten password page. 

### Step 1
Navigate to http://0.0.0.0/index.php?page=recover
> * Inspect the page, alter the hidden input value, inputting anything.
> * Thereafter, submit the form.
> * **THE FLAG IS : 1D4855F7337C0C14B6F44946872C4EB33853F40B2D54393FBE94F49F1E19BBB0**

## Prevention
> * Just don't do this nonsense, process on the backend