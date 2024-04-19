#!/bin/bash

echo "All variables : $@"
echo "Number of variable passed : $#"
echo "script Name: $0"
echo "current working directory :$PWD"
echo "home directory of current user: $HOME"
echo "process id of the current shell script: $$"
sleep 60 $
echo "process id of last background command: $!"
