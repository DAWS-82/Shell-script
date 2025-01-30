#!/bin/bash

echo "All values passed: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "Present working directory: $PWD"
echo "Home directory or current use: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of current script: $$
sleep 60 &
echo "Process id of last command in background: $!"
