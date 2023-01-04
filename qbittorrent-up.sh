#! /bin/bash

file=$1

cloudName=webdrive
cloudFolder=/189home/ptdownload

software=/root/up/rclone
transfers=16

if [ -d "${file}" ];then
	${software} copy --transfers=$transfers "$1" ${cloudName}:${cloudFolder}/"$2" 
elif [ -f "${file}" ]; then
	${software} copy "$1" ${cloudName}:${cloudFolder}/ 
fi
