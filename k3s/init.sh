#!/bin/bash
text=""
n=39
ls > list.txt
while IFS= read -r line; do
  if [ "$line" != "init.sh" ] && [ "$line" != "list.txt" ]; then
    text="${text},${line}"
  fi
done < list.txt
rm list.txt
#echo "${text:1}"
sudo k3s kubectl apply -f "${text:1}"