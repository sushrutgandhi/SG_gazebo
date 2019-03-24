#!/bin/bash

# To stop control+C
trap "echo Exited!; exit;" SIGINT SIGTERM

# Loop indefinitely
while true; do
# First go to one limit of arm right 3
echo "Going to limit of arm_right_3_joint -2.3" 


rostopic pub /motor_states/pan_tilt_port dynamixel_msgs/JointState "header: 
  seq: 0
  stamp: 
    secs: 0
    nsecs: 0
  frame_id: ''
name: ['pan_tilt_port'] 
motor_ids: 1
motor_temps: 30
goal_pos: 800
current_pos:
" 

done
