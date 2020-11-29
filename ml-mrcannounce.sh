#!/bin/sh

MRCDATA="/mystic/data/mrc"
BBSNAME="Unconfigured_BBS"
BBSDISP="|11U|03nconfigured |11B|03BS"
BOTUSER="SysOp"
ROOM="lobby"

if [ $# -lt 1 ]; then
  echo "$(date) ml-mrcannounce ERROR: Not enough arguments. Aborting." >> /var/log/ml-mrcannounce.log
  exit 1
else
  HANDLE=$1
fi

MRCANNOUNCE="$BOTUSER~$BBSNAME~$ROOM~~~~|15* |13$HANDLE |14has just logged into $BBSDISP~\r\n"

echo "$MRCANNOUNCE" > $MRCDATA/mrcannounce.mrc
