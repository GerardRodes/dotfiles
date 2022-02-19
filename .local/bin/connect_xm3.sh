#!/usr/bin/expect

set MAC "38:18:4C:D3:51:9E"

spawn bluetoothctl

expect -re "#"
send "remove $MAC\n"

sleep 2

expect -re "#"
send "power on\n"
send "agent on\n"
send "scan on\n"
expect -re "CHG.*$MAC"

sleep 2

send "scan off\n"
send "trust $MAC\n"
expect -re "rusted: yes"

sleep 2

expect -re "#"
send "pair $MAC\n"
expect -re "airing successful"

sleep 2

expect -re "#"
send "connect $MAC\n"
expect -re "onnection successful"

sleep 2

expect -re "#"
send "quit\n"
expect eof