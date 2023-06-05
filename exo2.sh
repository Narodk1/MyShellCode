#!/bin/bas
test(){
     if [ -z $1 ]; then echo "parametre inexistant";exit 1;
fi
else
      if [ -f $1 ]; then echo "fichier existant";exit 2; fi
else echo "fichier non ordinaire "; exit 3;fi 
fi
}
nbr_user(){

echo "nbr user est: $(cat $1 |wc -l)";
}
emsi_uid(){
  vals=$(cat $1| grep "^emsi")
  for x in $vals
     do 
            echo "$x-->id -u $x" 
     done
}
test $1
nbr_user $1 
emsi_uid $1
