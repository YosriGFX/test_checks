#!/bin/bash
whois $1 | awk -F':' '/^Registrar/ || /^Admin/ || /^Tech/ {print $1 "," $2}' > $1.csv