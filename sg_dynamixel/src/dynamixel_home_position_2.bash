#!/bin/bash

rostopic pub -1 /shoulder_yaw_joint_controller/command std_msgs/Float64 -- 0

rostopic pub -1 /shoulder_pitch_joint_controller/command std_msgs/Float64 -- 0

rostopic pub -1 /elbow_pitch_joint_controller/command std_msgs/Float64 -- 0

rostopic pub -1 /wrist_pitch_joint_controller/command std_msgs/Float64 -- 0

rostopic pub -1 /wrist_roll_joint_controller/command std_msgs/Float64 -- 0

# 1.73 , 0.72 , 0.37 , 1.43, 1.54, 0
points: 
  - 
    positions: [1.57, 1.07, 1.57, 1.85, 1.57, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 1
      nsecs: 990099009
 
  -
    positions: [1.56, 0.91, 0.96, 1.85, 1.57, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 2  
      nsecs: 990099009- 
    positions: [1.55, 0.91, 1.05, 1.89, 1.51, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 2
      nsecs: 990099009
 
  -
    positions: [1.52, 1.01, 1.52, 1.84, 1.51, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 3
      nsecs: 490099009
  - 
    positions: [1.46, 1.01, 1.46, 1.86, 1.67, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 3
      nsecs: 990099009
 
  -
    positions: [1.38, 0.95, 1.38, 1.82, 1.85, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 4  
      nsecs: 490099009

  - 
    positions: [1.28, 0.86, 1.28, 1.80, 2.16, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 4
      nsecs: 990099009
 
  -
    positions: [0.85, 0.68, 1.15, 1.80, 2.38, 0]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 5
      nsecs: 490099009
  -
    positions: [0.51, 0.42, 1.01, 1.62, 2.52, 0.6]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 5
      nsecs: 990099009
  - 
    positions: [0.0, 0.2, 0.86, 1.42, 2.87, 1.2]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 6
      nsecs: 490099009
-
    positions: [0.7080364352, 0.7326847631, 0.7080364352, 1.2153516721, 2.4326847631]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 6  
      nsecs: 990099009

  - 
    positions: [0.556715953, 0.5838511119, 0.556715953, 0.992864841, 2.5838511119]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 7
      nsecs: 490099009
 
  -
    positions: [0.415387034, 0.7250360747, 0.415387034, 0.8303509593, 2.7250360747]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 7
      nsecs: 990099009
  - 
    positions: [0.2899494587, 0.8503458807, 0.2899494587, 0.579603578, 2.8503458807]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 8
      nsecs: 490099009
 
  -
    positions: [0.1851611143, 0.9550274888, 0.1851611143, 0.3701336255, 2.9550274888]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 8
      nsecs: 990099009
  -
    positions: [0.104181238, 1.0359248799, 0.104181238, 0.2082563581, 3.0359248799]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 9
      nsecs: 490099009
  - 
    positions: [0.0481136596, 1.0919353485, 0.0481136596, 0.0961783111, 3.0919353485]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 9
      nsecs: 990099009
 
  -
    positions: [0.0155500445, 1.1244657946, 0.0155500445, 0.0310842499, 3.1244657946]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 10  
      nsecs: 490099009

  - 
    positions: [0.0021131363, 1.1378890161, 0.0021131363, 0.0042241203, 3.1378890161]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 10
      nsecs: 990099009
 
  -
    positions: [0, 1.14, 0, 0, 3.14]
    velocities: []
    accelerations: []
    effort: []
    time_from_start: 
      secs: 11
      nsecs: 490099009
