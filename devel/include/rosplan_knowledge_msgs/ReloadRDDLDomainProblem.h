// Generated by gencpp from file rosplan_knowledge_msgs/ReloadRDDLDomainProblem.msg
// DO NOT EDIT!


#ifndef ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_RELOADRDDLDOMAINPROBLEM_H
#define ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_RELOADRDDLDOMAINPROBLEM_H

#include <ros/service_traits.h>


#include <rosplan_knowledge_msgs/ReloadRDDLDomainProblemRequest.h>
#include <rosplan_knowledge_msgs/ReloadRDDLDomainProblemResponse.h>


namespace rosplan_knowledge_msgs
{

struct ReloadRDDLDomainProblem
{

typedef ReloadRDDLDomainProblemRequest Request;
typedef ReloadRDDLDomainProblemResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReloadRDDLDomainProblem
} // namespace rosplan_knowledge_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem > {
  static const char* value()
  {
    return "46f5005f9ac31164db24c532bfe60e3b";
  }

  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem&) { return value(); }
};

template<>
struct DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem > {
  static const char* value()
  {
    return "rosplan_knowledge_msgs/ReloadRDDLDomainProblem";
  }

  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem&) { return value(); }
};


// service_traits::MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest> should match
// service_traits::MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >
template<>
struct MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest> should match
// service_traits::DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >
template<>
struct DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest>
{
  static const char* value()
  {
    return DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse> should match
// service_traits::MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >
template<>
struct MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse> should match
// service_traits::DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >
template<>
struct DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse>
{
  static const char* value()
  {
    return DataType< ::rosplan_knowledge_msgs::ReloadRDDLDomainProblem >::value();
  }
  static const char* value(const ::rosplan_knowledge_msgs::ReloadRDDLDomainProblemResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSPLAN_KNOWLEDGE_MSGS_MESSAGE_RELOADRDDLDOMAINPROBLEM_H
