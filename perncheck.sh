#! /bin/bash

#
# This script tests to see if PERN tools
# are running at the start of boot.
#


service_check () {
    if [[ -z "$(ls /etc/systemd/system/multi-user.target.wants | grep "$2")" ]]
      then
        echo "Error: $2 does not exist! Check spelling or enable the service."
      return 1
    fi
    echo "$2 service is running on boot!"
    systemctl status "$2"
    return 0    
}

print_usage () {
    echo "Usage:
          perncheck.sh -h Displays this usage message
          perncheck.sh -d <service_name>"
}

case "$1" in
    -h )
        print_usage
        ;;
    -d )
        service_check "$@"
        ;;
     * )
        echo "ERROR: Invalid option: $1"
        print_usage
        ;;
esac