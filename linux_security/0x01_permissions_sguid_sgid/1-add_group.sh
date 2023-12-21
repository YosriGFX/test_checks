#!/bin/bash
addgroup $1
chown :root $2
chmod g+rx $2
