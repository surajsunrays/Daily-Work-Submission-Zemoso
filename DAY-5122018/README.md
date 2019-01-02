# find command operations and options
### List all files in current and sub directory
```
find
```
OR
```
find . -print
```

searching file in entire system 
```
sudo find / -name passwd
```

Searching specific directory or path
```
find ./Documents/*work    #This will display all dir's with ending work.
```
OR
Searching particular directory with specified name,(Our case directory name is my_work)
```
sudo find / -type d -name my_work
```
OR
Searching particular file with specified name(Our case file name is test.txt)

```
sudo find / -type f -name test.txt
```
OR
All matching files with name use wild card like *(It will show all matching entries ends with est.txt)
```
sudo find / -type f -name *est.txt
```
Setting up the search depth
```
sudo find /home/zadmin/ -maxdepth 2 -name "*est.txt" 
```
It will in search 2 levels of the directory

##### Excluding the file types/files from search
###### (Scenario- A web-developer want to search .html files only but not the .config files)
This will exclude .config files from search
```
find /home/zadmin/Documents/ -not -name "*.config"
```
###### Searching only file
```
sudo find /home/zadmin -type f -name test.txt
```

###### Searching only directory
```
sudo find /home/zadmin -type d -name my_work
```

###### Searching file with certain permissions
```
sudo find /home/zadmin -type f -perm 0644
```

###### Searching executable file
```
sudo find /home/zadmin -type f -perm /a=x
```

###### Searching file for particular user
```
sudo find /home/zadmin -user zadmin
```
###### Searching file with specified size
```
sudo find /home/zadmin/Downloads/ -size 1M
```
###### Searching empty files
```
find /home/zadmin -type f -empty
```

###### Searching empty Directories
```
find /home/zadmin -type d -empty
```

##### Combining multiple search criteria (Searching multiple files in single shot)
```
sudo find /home/zadmin -name '.config' -o -name '*.php' -o -name '*.png' -o -name '*.json'
```
Find will work for the only directory that we specified(Default)

### List all files in specific dir
```
find /relative/path/of/dir -print
```
## locate command operations
This command provide another way to search files in system
Like, If we want to search test.txt in whole system,use
```
locate test.txt
```
Ignoring the case for Search(We have to search test.txt, name we specify is Test.txt)
```
locate -i Test.txt
```

locate will search the dir or file in the whole system with matching entries
