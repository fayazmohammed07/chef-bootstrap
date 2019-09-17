#! /bin/bash

echo "please enter file name"
read file

cd /opt/chef-repo

while IFS=' ' read -r f1 f2
do
    echo "$f1" "$f2"
           cd /opt/chef-repo
           echo "field # 1 : $f1 ==> field #2 : $f2"
           knife bootstrap $f1 -U root -P 12345678 --sudo -N "$f2" --sk


done < $file

