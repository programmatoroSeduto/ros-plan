// Generated by gencpp from file rosplan_interface_mapping/CreatePRMResponse.msg
// DO NOT EDIT!


#ifndef ROSPLAN_INTERFACE_MAPPING_MESSAGE_CREATEPRMRESPONSE_H
#define ROSPLAN_INTERFACE_MAPPING_MESSAGE_CREATEPRMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosplan_interface_mapping
{
template <class ContainerAllocator>
struct CreatePRMResponse_
{
  typedef CreatePRMResponse_<ContainerAllocator> Type;

  CreatePRMResponse_()
    : waypoints()  {
    }
  CreatePRMResponse_(const ContainerAllocator& _alloc)
    : waypoints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _waypoints_type;
  _waypoints_type waypoints;





  typedef boost::shared_ptr< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CreatePRMResponse_

typedef ::rosplan_interface_mapping::CreatePRMResponse_<std::allocator<void> > CreatePRMResponse;

typedef boost::shared_ptr< ::rosplan_interface_mapping::CreatePRMResponse > CreatePRMResponsePtr;
typedef boost::shared_ptr< ::rosplan_interface_mapping::CreatePRMResponse const> CreatePRMResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator1> & lhs, const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator2> & rhs)
{
  return lhs.waypoints == rhs.waypoints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator1> & lhs, const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosplan_interface_mapping

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "49708eee94ad052e2e6e0398654eb86a";
  }

  static const char* value(const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x49708eee94ad052eULL;
  static const uint64_t static_value2 = 0x2e6e0398654eb86aULL;
};

template<class ContainerAllocator>
struct DataType< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosplan_interface_mapping/CreatePRMResponse";
  }

  static const char* value(const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] waypoints\n"
;
  }

  static const char* value(const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CreatePRMResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosplan_interface_mapping::CreatePRMResponse_<ContainerAllocator>& v)
  {
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.waypoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSPLAN_INTERFACE_MAPPING_MESSAGE_CREATEPRMRESPONSE_H
