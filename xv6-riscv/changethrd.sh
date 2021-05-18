#! /bin/bash
#  ln
#
#  Creates links to files and directories.
#  More information: https://www.gnu.org/software/coreutils/ln.
#
#  - Create a symbolic link to a file or directory:
#    ln -s path/to/file_or_directory path/to/symlink
#
#  - Overwrite an existing symbolic link to point to a different file:
#    ln -sf path/to/new_file path/to/symlink
#
#  - Create a hard link to a file:
#    ln path/to/file path/to/hardlink

DEFAULT=1
FCFS=2
RR=3
PSJF=4
SJF=5

case "$1" in
  "$DEFAULT")
  ln -sf  SOL/Default/threads.h  user/threads.h
  ln -sf  SOL/Default/threads.c  user/threads.c
  ;;

  "$FCFS")
  ln -sf  SOL/FCFS/threads.h  user/threads.h
  ln -sf  SOL/FCFS/threads.c  user/threads.c
  ;;

  "$RR")
  ln -sf  SOL/RR/threads.h  user/threads.h
  ln -sf  SOL/RR/threads.c  user/threads.c
  ;;

  "$PSJF")
  ln -sf  SOL/PSJF/threads.h  user/threads.h
  ln -sf  SOL/PSJF/threads.c  user/threads.c
  ;;

  "$SJF")
  ln -sf  SOL/SJF/threads.h  user/threads.h
  ln -sf  SOL/SJF/threads.c  user/threads.c
  ;;

  *)

  printf "\
    Usage: ./changethrd.sh NUM
    (Default : NUM = $DEFAULT / FCFS : NUM = $FCFS / RR : NUM = $RR / PSJF : NUM = $PSJF / SJF : NUM = $SJF)
  "
  ;;
esac

ls -lah user/threads*
