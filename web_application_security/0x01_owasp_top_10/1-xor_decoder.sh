#!/bin/bash

function ord {
        printf %d "'$1";
}

e=`echo "${1/\{xor\}/""}" | base64 --decode`

seq 0 $((${#e}-1)) | while read line
do
        char=$((`ord ${e:$line:1}` ^ `ord _`))
        printf \\$(printf '%03o' $char)
done
