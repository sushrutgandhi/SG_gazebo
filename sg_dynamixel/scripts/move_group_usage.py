#!/usr/bin/env python

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
from std_msgs.msg import String

def move_group_python_interface_tutorial():
#Initialize moveit_commander and rospy

	moveit_commander.roscpp_initialize(sys.argv)
	rospy.init_node('move_group_python_interface_tutorial', anonymous=True)

#Instantiate a RobotCommander object. This object is an interface to the robot as a whole.

	robot = moveit_commander.RobotCommander()

#Instantiate a PlanningSceneInterface object. This object is an interface to the world surrounding the robot.

	scene = moveit_commander.PlanningInterface()

#Instantiate a MoveGroupCommander object. This object is an interface to one group of joints. 

	group = moveit_commander.MoveGroupCommander("arm")

#We create this DisplayTrajectory publisher which is used below to publish trajectories for RVIZ to visualize.

	display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path', moveit_msgs.msg.DisplayTrajectory)

#Wait for RVIZ to initialize. This sleep is ONLY to allow Rviz to come up.

	print "........... Waiting for RVIZ.."
	rospy.sleep(10)

#We can get the name of the reference frame for this robot, end-effector link for this group and a list of all the groups in the robot.

	print "...... Reference frame: %s" % group.get_planning_frame()
	print "...... Reference frame: %s" % group.get_end_effector_link()
	print "...... Reference frame: %s" % robot.get_group_names()

#Sometimes for debugging it is useful to print the entire state of the robot.

	print "....... Printing robot state"
	print robot.get_current_state()
	

#We can plan a motion for this group to a desired pose for the end-effector

	print "============ Generating plan 1"
	pose_target = geometry_msgs.msg.Pose()
	pose_target.orientation.w = 1.0
	pose_target.position.x = 0.7
	pose_target.position.y = 0.5
	pose_target.position.z = 1.1
	group.set_pose_target(pose_target)



#Now, we call the planner to compute the plan and visualize it if successful Note that we are just planning, not asking move_group to actually move the robot

	plan1 = group.plan()

	print " ... Waiting while Rviz displays plan1.."
	rospy.sleep(10)

#displaying Trajectory

	print "..... Visualizing plan1..."
	display_trajectory = moveit_msgs.msg.DisplayTrajectory()
	display_trajectory.trajectory_start = robot.get_current_state()
	display_trajectory.trajectory.append(plan1)
	display_trajectory_publisher.publish(display_trajectory);


	print "... Waiting while plan1 is visualized (again)..."
	rospy.sleep(10)


	moveit_commander.roscpp_shutdown()
if __name__=='__main__':
  try:
    move_group_python_interface_tutorial()
  except rospy.ROSInterruptException:
    pass




