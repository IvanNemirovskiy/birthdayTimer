#!/bin/bash
echo "Enter your next birthday date(2023-03-17): "
read $"birthday_date"
hour=$(( ($(date -d $birthday_date +%s) - $(date +%s)) / 3600 ))
min=0
sec=10
        while [ $hour -ge 0 ]; do
                 while [ $min -ge 0 ]; do
                         while [ $sec -ge 0 ]; do
                                 echo -ne "$hour:$min:$sec\033[0K\r"
                                 let "sec=sec-1"
                                 sleep 1
                         done
                         sec=59
                         let "min=min-1"
                 done
                 min=59
                 let "hour=hour-1"
         done
echo "Happy Birthday!"
