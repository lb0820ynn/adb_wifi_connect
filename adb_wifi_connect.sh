#!/bin/bash

val=$(adb shell ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:")
echo $val
adb tcpip 5555
adb connect $val
