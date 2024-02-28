#!/bin/bash

# Generate Flag Function
gen_flag () {
    md5sum <<< $(openssl aes-256-cbc -pass pass:$1 -nosalt -pbkdf2 <<< $2) | head -c 32
}
echo $(gen_flag $1 $2)
