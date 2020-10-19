# Broken Access Control
This attack concerns the lack of restrictions on what authenticated users are allowed to do. Attackers can exploit these flaws to access unauthorized functionality and/or data, such as access other users’ accounts, view sensitive files, modify other users’ data, change access rights, etc.

In this case, processing a survey, not validating the received data allows for attacks to scew the data of the survey.

### Step 1
Navigate to http://0.0.0.0/?page=survey
> * Inspect the page, alter the _form select option_'s, inputting a highed numerical value.
> * Thereafter, select that altered option.
> * **THE FLAG IS : 03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA**

## Prevention
> * Process on the backend: validate input.