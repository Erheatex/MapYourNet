#!/bin/bash

for ip in $(cat ip.txt); do 
nmap -p 443  -T4 $ip |grep "Nmap scan" |cut -d " " -f 5 | tr -d " "   &
done

