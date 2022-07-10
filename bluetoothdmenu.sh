#!/bin/bash

device=$( bluetoothctl devices )
echo $device
#IFS='Device' ; read -ra devices <<<"$device"

delimiter="Device"
string=$device$delimiter

array=()
while [[ $string ]] ; do
	val=("${string%%"$delimiter"*}" )
	if [ "$val" != " " ] 
	then
	       	array+=$val
	fi
	string=${string#*"$delimiter"}
done

choice=$(printf "%s\n" "${array[@]}" | dmenu)

choice= read -ra d <<< $choice
#echo ${devices[0]}
eval "bluetoothctl connect " $d | dmenu

