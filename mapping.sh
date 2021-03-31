#!/bin/sh
script_abs=$(readlink -f "${BASE_SOURCE-$0}")
script_dir=$(dirname ${script_abs})
. /opt/ros/melodic/setup.sh

. ${script_dir}/devel_isolated/setup.sh

roslaunch cartographer_ros rplidar_mapping.launch

exit 0
