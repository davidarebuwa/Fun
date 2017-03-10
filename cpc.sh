#!/bin/bash
#Script name : cpc.sh
#Description : Copies a file and zips it into a particular folder
#Written by: DAVID
#shell 1 - argument
$1 = option
$2  = dirname
$3  = file

if [ "$#" -ne 3 ]; then  #checks to see if arguments are entered correctly
 elif [ -f "$file" ]; then #checks to see if the source file exists
   elif [[ ! -d "$dirname" ]]; then #checks to see if the target directory exists
     elif [ "$option" = "-c" ]; then 
     echo " Trying to copy $file to $dirname"
     cp -v $file  $folder
     echo "$file copied to $dirname succesfully"
     
        elif [ "$option" = "-z" ]; then
        echo "zipping $file to $dirname"
        gzip -v $file
        mv "$file.gz" "$dirname"
        echo "$file has beeen moved to the folder and zipped for protection"
         
                    else
                  echo " The first argument has to be '-c' or '-z'
                  Usage cpc [-cz] [source-file] [target-directory]"
                  exit
              else
          echo "The target is not a directory! 
          Usage: cpc [-cz] [source-file] [target-directory]" #error report for shell 3
          exit
       else
    echo " The source file 'no_file' does not exist." #error report for shell 2
    exit
  else
echo "Error : Incorrect number of arguments
Usage: cpc [-cz] [source-file] [target-directory]" #error report for shell 1
exit
fi
