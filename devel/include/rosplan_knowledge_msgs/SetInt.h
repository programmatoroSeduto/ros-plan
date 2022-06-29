// Generated by gencpp from file rosplan_knowledge_msgs/SetInt.msg
// DO NOT EDIT!


#ifndef ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_SETINT_H
#define ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_SETINT_H

#include <ros/service_traits.h>


#include <rosplan_knowledge_msgs/SetIntRequest.h>
#include <rosplan_knowledge_msgs/SetIntResponse.h>


namespace rosplan_knowledge_msgs
{

struct SetInt
{

typedef SetIntRequest Request;
typedef SetIntResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetInt
} // namespace rosplan_knowledge_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosplan_knowledge_msgs::SetInt > {
  static const char* value()
  {
    return "bc437afb45673379bdb9f299f9cbbc9e";
  }

  static const char* value(const ::rosplan_knowledge_msgs::SetInt&) { return value(); }
};

template<>
struct DataType< ::rosplan_knowledge_msgs::SetInt > {
  static const char* value()
  {
    return "rosplan_knowledge_msgs/SetInt";
  }

  static const char* value(const ::rosplan_knowledge_msgs::SetInt&) { return value(); }
};


// service_traits::MD5Sum< ::rosplan_knowledge_msgs::SetIntRequest> should match
// service_traits::MD5Sum< ::rosplan_knowledge_msgs::SetInt >
template<>
struct MD5Sum< ::rosplan_knowledge_msgs::SetIntRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosplan_knowledge_msgs::SetInt >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::SetIntRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosplan_knowledge_msgs::SetIntRequest> should match
// service_traits::DataType< ::rosplan_knowledge_msgs::SetInt >
template<>
struct DataType< ::rosplan_knowledge_msgs::SetIntRequest>
{
  static const char* value()
  {
    return DataType< ::rosplan_knowledge_msgs::SetInt >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::SetIntRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosplan_knowledge_msgs::SetIntResponse> should match
// service_traits::MD5Sum< ::rosplan_knowledge_msgs::SetInt >
template<>
struct MD5Sum< ::rosplan_knowledge_msgs::SetIntResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosplan_knowledge_msgs::SetInt >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::SetIntResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosplan_knowledge_msgs::SetIntResponse> should match
// service_traits::DataType< ::rosplan_knowledge_msgs::SetInt >
template<>
struct DataType< ::rosplan_knowledge_msgs::SetIntResponse>
{
  static const char* value()
  {
    return DataType< ::rosplan_knowledge_msgs::SetInt >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::SetIntResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_SETINT_H