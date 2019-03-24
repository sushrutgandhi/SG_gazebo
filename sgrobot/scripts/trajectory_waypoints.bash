#!/bin/bash

# To stop control+C
trap "echo Exited!; exit;" SIGINT SIGTERM

# Loop indefinitely
while true; do
# First go to one limit of arm right 3
echo "Going to limit of arm_right_3_joint -2.3" 

rostopic pub /SG_robot/arm_joint_controller/command trajectory_msgs/JointTrajectory "header: 
  seq: 0
  stamp: 
    secs: 0
    nsecs: 0
  frame_id: ''
joint_names: ['shoulder_yaw_joint', 'shoulder_pitch_joint', 'elbow_pitch_joint', 'wrist_pitch_joint', 'wrist_roll_joint', 'gripper_revolute_joint']
points: 
  - 
    positions: [3.73, 0.07, 1.57, 1.85, 1.57, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 1
      nsecs: 990099009
 
  -
    positions: [1.73, 0.91, 0.96, 1.85, 1.57, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 2  
      nsecs: 990099009
  -
    positions: [1.73, 0.72, 0.67, 1.63, 1.54, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 3  
      nsecs: 990099009
  -
    positions: [1.73, 0.72, 0.37, 1.40, 1.54, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 4  
      nsecs: 990099009
  -
    positions: [1.73, 0.72, 0.37, 1.40, 1.54, 1.0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 6  
      nsecs: 490099009" 


# Then to the other
done
