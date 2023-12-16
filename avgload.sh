#!/bin/bash

while true
do
    # Ausgabe der Load Average alle 5 Sekunden
    cat /proc/loadavg  |  awk '{print substr($0,1,22)}'
    sleep 2
done

