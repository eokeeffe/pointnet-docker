#!/bin/bash
set -o errexit

#echo $@
#echo $0
#echo $1
#echo " "

case "$1" in
    sh|bash)
        set -- "$@"
    ;;
    *.py)
        set -- python2.7 "$@"
    ;;
    *)
        set -- "$@"
    ;;
esac

exec "$@"

