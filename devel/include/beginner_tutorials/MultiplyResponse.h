// Generated by gencpp from file beginner_tutorials/MultiplyResponse.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_MULTIPLYRESPONSE_H
#define BEGINNER_TUTORIALS_MESSAGE_MULTIPLYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct MultiplyResponse_
{
  typedef MultiplyResponse_<ContainerAllocator> Type;

  MultiplyResponse_()
    : multiply(0)  {
    }
  MultiplyResponse_(const ContainerAllocator& _alloc)
    : multiply(0)  {
  (void)_alloc;
    }



   typedef int64_t _multiply_type;
  _multiply_type multiply;





  typedef boost::shared_ptr< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MultiplyResponse_

typedef ::beginner_tutorials::MultiplyResponse_<std::allocator<void> > MultiplyResponse;

typedef boost::shared_ptr< ::beginner_tutorials::MultiplyResponse > MultiplyResponsePtr;
typedef boost::shared_ptr< ::beginner_tutorials::MultiplyResponse const> MultiplyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'beginner_tutorials': ['/home/kagan/catkin_ws/src/beginner_tutorials/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0eac2a093183056a702753430acdfb73";
  }

  static const char* value(const ::beginner_tutorials::MultiplyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0eac2a093183056aULL;
  static const uint64_t static_value2 = 0x702753430acdfb73ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/MultiplyResponse";
  }

  static const char* value(const ::beginner_tutorials::MultiplyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 multiply\n\
\n\
";
  }

  static const char* value(const ::beginner_tutorials::MultiplyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.multiply);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiplyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::MultiplyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::MultiplyResponse_<ContainerAllocator>& v)
  {
    s << indent << "multiply: ";
    Printer<int64_t>::stream(s, indent + "  ", v.multiply);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_MULTIPLYRESPONSE_H
