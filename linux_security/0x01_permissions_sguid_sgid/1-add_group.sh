#!/bin/bash
addgroup security
chown :$1 $2
chmod g+rx $2