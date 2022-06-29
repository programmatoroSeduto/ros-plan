// Generated by gencpp from file nav2d_navigator/MoveToPosition2DAction.msg
// DO NOT EDIT!


#ifndef NAV2D_NAVIGATOR_MESSAGE_MOVETOPOSITION2DACTION_H
#define NAV2D_NAVIGATOR_MESSAGE_MOVETOPOSITION2DACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav2d_navigator/MoveToPosition2DActionGoal.h>
#include <nav2d_navigator/MoveToPosition2DActionResult.h>
#include <nav2d_navigator/MoveToPosition2DActionFeedback.h>

namespace nav2d_navigator
{
template <class ContainerAllocator>
struct MoveToPosition2DAction_
{
  typedef MoveToPosition2DAction_<ContainerAllocator> Type;

  MoveToPosition2DAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  MoveToPosition2DAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav2d_navigator::MoveToPosition2DActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::nav2d_navigator::MoveToPosition2DActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::nav2d_navigator::MoveToPosition2DActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> const> ConstPtr;

}; // struct MoveToPosition2DAction_

typedef ::nav2d_navigator::MoveToPosition2DAction_<std::allocator<void> > MoveToPosition2DAction;

typedef boost::shared_ptr< ::nav2d_navigator::MoveToPosition2DAction > MoveToPosition2DActionPtr;
typedef boost::shared_ptr< ::nav2d_navigator::MoveToPosition2DAction const> MoveToPosition2DActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator1> & lhs, const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator1> & lhs, const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nav2d_navigator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a15e7e3456f54b21786f4359b2c3e43";
  }

  static const char* value(const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a15e7e3456f54b2ULL;
  static const uint64_t static_value2 = 0x1786f4359b2c3e43ULL;
};

template<class ContainerAllocator>
struct DataType< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav2d_navigator/MoveToPosition2DAction";
  }

  static const char* value(const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"MoveToPosition2DActionGoal action_goal\n"
"MoveToPosition2DActionResult action_result\n"
"MoveToPosition2DActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"MoveToPosition2DGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"std_msgs/Header header\n"
"geometry_msgs/Pose2D target_pose\n"
"float32 target_distance\n"
"float32 target_angle\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"MoveToPosition2DResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/Pose2D final_pose\n"
"float32 final_distance\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"MoveToPosition2DFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: nav2d_navigator/MoveToPosition2DFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 distance\n"
"\n"
"\n"
;
  }

  static const char* value(const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveToPosition2DAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nav2d_navigator::MoveToPosition2DAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::nav2d_navigator::MoveToPosition2DActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::nav2d_navigator::MoveToPosition2DActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::nav2d_navigator::MoveToPosition2DActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAV2D_NAVIGATOR_MESSAGE_MOVETOPOSITION2DACTION_H
