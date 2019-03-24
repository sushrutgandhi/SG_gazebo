#!/bin/bash

# To stop control+C
trap "echo Exited!; exit;" SIGINT SIGTERM

# Loop indefinitely
while true; do

echo "Going to limit of arm_right_3_joint 2.7"

rostopic pub /SG_robot/arm_joint_controller/command trajectory_msgs/JointTrajectory "header: 
  seq: 0
  stamp: 
    secs: 0
    nsecs: 0
  frame_id: ''
joint_names: ['shoulder_yaw_joint', 'shoulder_pitch_joint', 'elbow_pitch_joint', 'wrist_pitch_joint', 'wrist_roll_joint']
points: 
  - 
    positions: [0.44, 0.61519257357093, 0.72889357189, 0.13493568165539999, 0.0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 2
      nsecs: 990099009" --once
done
