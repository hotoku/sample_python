#!/bin/bash

PORT=8888

while getopts p: OPT; do
    case ${OPT} in
        p) PORT=${OPTARG} ;;
    esac
done

docker run --rm -it -v /Users/hotoku/sample/python:/root/work -p ${PORT}:${PORT} hotoku/python
