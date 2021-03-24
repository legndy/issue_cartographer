#!/bin/sh
script_abs=$(readlink -f "${BASE_SOURCE-$0}")
script_dir=$(dirname ${script_abs})
. /opt/ros/melodic/setup.sh

. ${script_dir}/install_isolated/setup.sh

rosservice call /finish_trajectory 0

rosservice call /write_state "filename: '${script_dir}/map.pbstream' 
include_unfinished_submaps: false" 

#rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=/home/corona/google_ws/map/gridmap -pbstream_filename=/home/#!#!#corona/google_ws/map/map.pbstream -resolution=0.05

exit 0
