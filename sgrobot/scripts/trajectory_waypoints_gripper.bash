#!/bin/bash

# To stop control+C
trap "echo Exited!; exit;" SIGINT SIGTERM

# Loop indefinitely
while true; do
# First go to one limit of arm right 3
echo "Going to limit of arm_right_3_joint -2.3" 


rostopic pub /SG_robot/gripper_controller/command trajectory_msgs/JointTrajectory "header: 
  seq: 0
  stamp: 
    secs: 0
    nsecs: 0
  frame_id: ''
joint_names: ['gripper_right_joint']
points: 
  - 
    positions: [0,-0.3,0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 2
      nsecs: 990099009" 

done
