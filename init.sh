#!/bin/sh
log=samp.log
dat=`date`
samp="/home/atiana/samp/samp03svr"
cd /home/atiana/samp
 
echo "${dat} watchdog script starting." >>${log}
while true; do
        echo "${dat} Server exited, restarting..." >>${log}
        mv /home/atiana/samp/server_log.txt /home/atiana/samp/logs/server_log.`date '+%m%d%y%H%M%S'`
        ${samp} >> $log
	sleep 2
done
