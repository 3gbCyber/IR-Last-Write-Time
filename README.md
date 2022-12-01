
# Description
The script helps you to find all modified, accessed, and created files in a range of time. 
All you need is to run the script with the Administrator's permission.

![IMAGE1](https://github.com/3gbCyber/IR-Last-Write-Time/blob/main/image.png)

**Argument1:** Choose the path you want to search to files that modified, accessed, or created Ex. "C:\Users\"

**Argument2:** Specify the type of your search, just write one of these (LastAccessTime, LastWriteTime, CreationTime)

**Argument3 & Argument4:** Choose the range date M/D/Y Ex. 11/1/22 11/25/22 

**Arguemnt5:** The output name Ex. C:\temp\Result.csv

Ex. I'm looking for files that had been modified from 1/12/22 3/12/22 in all C:\Users\ and want to save the result in C:\temp\

```./run.ps1 C:\Users\ LastWriteTime 1/12/22 3/12/22 'C:\temp\result.csv'```


# Ex. RESULT
![result](https://github.com/3gbCyber/IR-Last-Write-Time/blob/main/result.png)

