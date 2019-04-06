#!/bin/bash

rostopic pub -1 /shoulder_yaw_joint_controller/command std_msgs/Float64 -- 1.5

rostopic pub -1 /shoulder_pitch_joint_controller/command std_msgs/Float64 -- 0.07

rostopic pub -1 /elbow_pitch_joint_controller/command std_msgs/Float64 -- 1.00

rostopic pub -1 /wrist_pitch_joint_controller/command std_msgs/Float64 -- 1.9

rostopic pub -1 /wrist_roll_joint_controller/command std_msgs/Float64 -- 1.5

rostopic pub -1 /gripper_revolute_joint_controller/command std_msgs/Float64 -- 0.2  #to 1.2
#3.7816415540874e-05, -1.570692590489172, -9.825923419557512e-05, 7.274782196618617e-05, -1.9127528276294476e-05



