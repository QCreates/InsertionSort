#!/bin/bash

INPUT=./time.txt

declare -i x=12
declare -i z=10

for i in {329..454}; do notequal="(($i + 1) % 6)";
			if [[ ${notequal} -ne ${x} ]];then
			   line="$(sed -n ${i}p time.txt)"
			   num1=${line:0:1}
			   num2=${line:2:1}
			   x+=$num1
			   z+=$num2
			   if [[ $z -gt 60 ]]; then
			     echo "10/4/2022 09:$(($x+1)):$(($z-60))"  
			   else
			       echo "10/4/2022 09:$(($x)):$z"
			   fi
			fi			
done
