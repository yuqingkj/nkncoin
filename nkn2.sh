#!/bin/bash
screen_name=$"nkn"
screen -dmS $screen_name
cmd=$"./nknd -p yuqing@U1";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'
echo ok
