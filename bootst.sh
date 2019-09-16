#! /bin/bash

echo "please enter file name"
read file
#echo "please enter file name for node name "
#read file1

cd /opt/chef-repo
while read p
do
           echo "$p"
           cd /opt/chef-repo
           knife bootstrap $p -U root -P 12345678 --sudo -N "node" -y
done < file.txt
