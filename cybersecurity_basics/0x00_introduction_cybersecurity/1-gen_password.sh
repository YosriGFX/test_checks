#!/bin/bash
tr -dc '[:graph:]' < /dev/urandom | fold -w $1 | head -n 1
