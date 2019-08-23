#/bin/sh

GREN='\033[0;32m'
NC='\033[0m'

echo -n "~[ "; printf "\t${GREN} start recovery country ${NC}\t"; echo " ]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mysql -u root -ptoor testN < ./countries.sql

echo -n "~[ "; printf "\t${GREN} start recovery sities ${NC}\t"; echo " ]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

mysql -u root -ptoor testN < ./cities.sql

echo -n "~[ "; printf "\t${GREN} Finish ${NC}\t"; echo " ]~~"
