// Generated by gencpp from file rosplan_dispatch_msgs/ParsingServiceResponse.msg
// DO NOT EDIT!


#ifndef ROSPLAN_DISPATCH_MSGS_MESSAGE_PARSINGSERVICERESPONSE_H
#define ROSPLAN_DISPATCH_MSGS_MESSAGE_PARSINGSERVICERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosplan_dispatch_msgs
{
template <class ContainerAllocator>
struct ParsingServiceResponse_
{
  typedef ParsingServiceResponse_<ContainerAllocator> Type;

  ParsingServiceResponse_()
    : plan_parsed(false)  {
    }
  ParsingServiceResponse_(const ContainerAllocator& _alloc)
    : plan_parsed(false)  {
  (void)_alloc;
    }



   typedef uint8_t _plan_parsed_type;
  _plan_parsed_type plan_parsed;





  typedef boost::shared_ptr< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ParsingServiceResponse_

typedef ::rosplan_dispatch_msgs::ParsingServiceResponse_<std::allocator<void> > ParsingServiceResponse;

typedef boost::shared_ptr< ::rosplan_dispatch_msgs::ParsingServiceResponse > ParsingServiceResponsePtr;
typedef boost::shared_ptr< ::rosplan_dispatch_msgs::ParsingServiceResponse const> ParsingServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator1> & lhs, const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.plan_parsed == rhs.plan_parsed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator1> & lhs, const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosplan_dispatch_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc50b29602a7f9075e91880aac617351";
  }

  static const char* value(const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc50b29602a7f907ULL;
  static const uint64_t static_value2 = 0x5e91880aac617351ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosplan_dispatch_msgs/ParsingServiceResponse";
  }

  static const char* value(const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool plan_parsed\n"
"\n"
;
  }

  static const char* value(const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.plan_parsed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParsingServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosplan_dispatch_msgs::ParsingServiceResponse_<ContainerAllocator>& v)
  {
    s << indent << "plan_parsed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.plan_parsed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSPLAN_DISPATCH_MSGS_MESSAGE_PARSINGSERVICERESPONSE_H
