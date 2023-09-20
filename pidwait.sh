#! /usr/bin/env bash
# pidwait() {
#     flag=${kill -o $1}
#     while [ $flag -eq 0 ]; do
#         sleep 1
#         flag=$(kill -o $1)
#     done
#     exit 0
# }
pidwait()
{
   while kill -0 $1 #循环直到进程结束
   do
   sleep 1 
   done
   ls
}