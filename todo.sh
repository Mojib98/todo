#! /bin/bash
int2="exit"
index=1  
isRun=true
in1="start"
while [ $isRun ]
do
echo "for insert new task press 'n'"
echo "for see your task press 's'"
echo "for clear all task press 'c"
echo "for exit press 'e'"
echo $jub
if [ $jub == "n" ]
  then
  while [ $in1 != $int2 ]
    do
     read in1
     if [ $in1 == "exit" ];
       then
        break
     fi
     index=$(( index+1 ))
     insert="$index-$in1"
     echo $insert
     echo   $insert  >> output_file.txt 
   #  echo   >> output_file.txt
    

     done
elif [ $jub == "s" ]
 then
  value=$(<output_file.txt)  
  while IFS= read -r line
    do
     echo "$line" 
    done < "$value"
 elif [ $jub == "c" ]
  then
   > output_file.txt 
 elif [ $jub == "e" ]
  then
 #isRun=false
# echo $isRun
   break
 else
   continue
 fi
done
