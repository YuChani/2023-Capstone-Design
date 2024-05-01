// Generated by gencpp from file carla_msgs/DestroyObject.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_DESTROYOBJECT_H
#define CARLA_MSGS_MESSAGE_DESTROYOBJECT_H

#include <ros/service_traits.h>


#include <carla_msgs/DestroyObjectRequest.h>
#include <carla_msgs/DestroyObjectResponse.h>


namespace carla_msgs
{

struct DestroyObject
{

typedef DestroyObjectRequest Request;
typedef DestroyObjectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DestroyObject
} // namespace carla_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::carla_msgs::DestroyObject > {
  static const char* value()
  {
    return "f66e2f1a2389241ede90395037adaed8";
  }

  static const char* value(const ::carla_msgs::DestroyObject&) { return value(); }
};

template<>
struct DataType< ::carla_msgs::DestroyObject > {
  static const char* value()
  {
    return "carla_msgs/DestroyObject";
  }

  static const char* value(const ::carla_msgs::DestroyObject&) { return value(); }
};


// service_traits::MD5Sum< ::carla_msgs::DestroyObjectRequest> should match
// service_traits::MD5Sum< ::carla_msgs::DestroyObject >
template<>
struct MD5Sum< ::carla_msgs::DestroyObjectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::carla_msgs::DestroyObject >::value();
  }
  static const char* value(const ::carla_msgs::DestroyObjectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::carla_msgs::DestroyObjectRequest> should match
// service_traits::DataType< ::carla_msgs::DestroyObject >
template<>
struct DataType< ::carla_msgs::DestroyObjectRequest>
{
  static const char* value()
  {
    return DataType< ::carla_msgs::DestroyObject >::value();
  }
  static const char* value(const ::carla_msgs::DestroyObjectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::carla_msgs::DestroyObjectResponse> should match
// service_traits::MD5Sum< ::carla_msgs::DestroyObject >
template<>
struct MD5Sum< ::carla_msgs::DestroyObjectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::carla_msgs::DestroyObject >::value();
  }
  static const char* value(const ::carla_msgs::DestroyObjectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::carla_msgs::DestroyObjectResponse> should match
// service_traits::DataType< ::carla_msgs::DestroyObject >
template<>
struct DataType< ::carla_msgs::DestroyObjectResponse>
{
  static const char* value()
  {
    return DataType< ::carla_msgs::DestroyObject >::value();
  }
  static const char* value(const ::carla_msgs::DestroyObjectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_DESTROYOBJECT_H