#!/bin/sh
script_abs=$(readlink -f "${BASE_SOURCE-$0}")
script_dir=$(dirname ${script_abs})
. /opt/ros/kinetic/setup.sh

. ${script_dir}/install_isolated/setup.sh

roslaunch cartographer_ros rplidar_matching.launch

exit 0
