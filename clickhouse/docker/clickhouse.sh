#!/bin/bash

################################################################################
# Help                                                                         #
################################################################################
Help() {
    # Display Help
    cat <<"EOF"

        _  _        _     _                                            _  _  
   ___ | |(_)  ___ | | __| |__    ___   _   _  ___   ___          ___ | |(_) 
  / __|| || | / __|| |/ /| '_ \  / _ \ | | | |/ __| / _ \ _____  / __|| || | 
 | (__ | || || (__ |   < | | | || (_) || |_| |\__ \|  __/|_____|| (__ | || | 
  \___||_||_| \___||_|\_\|_| |_| \___/  \__,_||___/ \___|        \___||_||_| 
                                                                             

                                                                       
EOF
    echo "clickhosue docker service command line "
    echo
    echo "Syntax: scriptTemplate [-help|-cli|-bash|-quary|-ping|-server]"
    echo "options:"
    echo "-help   -h                             show help function."
    echo "-cli    -c                             open clickhoue-client shell."
    echo "-bash   -b                             open container bash ."
    echo "-server -s   [ start , stop ]          start ot stop clickhouse-server ."
    echo
}
################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################

################################################################################
# actions                                                                      #
################################################################################

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
set -euo pipefail

export COMPOSE_FILE="${PROJECT_DIR}/docker-compose.yml"

while getopts ":h :c :b :q :pi :s :t :p" option; do
    case $option in
    h) # display Help
        Help
        exit
        ;;
    c) # run cmd cli
        exec docker compose run --rm clickhouse-cli clickhouse-client --host clickhouse-server
        ;;
    b) # run cmd bash
        exec docker compose run --rm clickhouse-cli
        ;;
    s) # run cmd server
        if [ $2 = "start" ]; then
            exec docker compose up -d
        fi
        if [ $2 = "stop" ]; then
            exec docker compose stop
        fi
        ;;
    \?) # display Help
        echo "Ops ... , command not found , please run clickhouse -h  for get more help..."
        exit
        ;;
    esac
done
