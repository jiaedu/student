read -p "" num1 num2 num3
if [ $num1 -gt $num2 ];then 
  if [ $num1 -gt $num3 ];then
    if [ $num2 -gt $num3 ];then
     echo "$num1 $num2 $num3"
    else
      echo "$num1 $num3 $num2" 
    fi  
  else [ $num1 -lt $num3 ]
     echo "$num3 $num1 $num2"
  fi  
else 
  if [ $num2 -gt $num3 ];then
    if [ $num1 -gt $num3 ];then
       echo "$num2 $num1 $num3"
    else
       echo "$num2 $num3 $num1"
    fi  
  else
     echo "$num3 $num2 $num1"
  fi  
fi

