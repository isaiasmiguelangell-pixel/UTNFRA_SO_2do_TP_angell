#!/bin/bash
USUARIOPASS=$1
LISTA=$2
if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
    echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
    exit 1
fi
ANT_IFS=$IFS
IFS=$'\n'
CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
for LINEA in $(cat $LISTA | grep -v ^#)
do
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
    sudo groupadd -f $GRUPO
    sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
done
IFS=$ANT_IFS
