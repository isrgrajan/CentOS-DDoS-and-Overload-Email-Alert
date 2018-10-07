#!/bin/bash
trigger=2.00 #Default load alert is 2
load=`cat /proc/loadavg | awk '{print $1}'`
response=`echo | awk -v T=$trigger -v L=$load 'BEGIN{if ( L > T){ print "greater"}}'`
if [[ $response = "greater" ]]
then
# load=`echo $(cat /proc/loadavg | awk '{print $1}') \> 2 | bc -l`
# if [ "$load" -ne 0 ]; then
        echo -e "Your Server Load Alert Needs Attention! System Load $(cat /proc/loadavg)\n\nSYNC IP\n$(netstat -n -p | grep SYN_REC | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n)\n\nAll IPs\n$(netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n) " | mail -s "System Load Alert $load" YOUR-EMAIL@PROVIDER.COM
        echo "Alert email sent to YOUR-EMAIL@PROVIDER.COM"
fi
echo "System Load $(cat /proc/loadavg)"
