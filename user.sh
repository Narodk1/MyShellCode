 #!/bin/bash
 if [ -z $1 ] ; then  read -p " veuillez entre le nom de vote user: " user 
else
  user =$1
fi
echo -e  "Les informations de l'utilisateur \"$user\"sont:\n"
cat /etc/passwd | grep "^$user"| tr ":" "\t"

