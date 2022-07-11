// Generated by gencpp from file robot_vision_lectures/SphereParams.msg
// DO NOT EDIT!


#ifndef ROBOT_VISION_LECTURES_MESSAGE_SPHEREPARAMS_H
#define ROBOT_VISION_LECTURES_MESSAGE_SPHEREPARAMS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_vision_lectures
{
template <class ContainerAllocator>
struct SphereParams_
{
  typedef SphereParams_<ContainerAllocator> Type;

  SphereParams_()
    : xc(0.0)
    , yc(0.0)
    , zc(0.0)
    , radius(0.0)  {
    }
  SphereParams_(const ContainerAllocator& _alloc)
    : xc(0.0)
    , yc(0.0)
    , zc(0.0)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef float _xc_type;
  _xc_type xc;

   typedef float _yc_type;
  _yc_type yc;

   typedef float _zc_type;
  _zc_type zc;

   typedef float _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::robot_vision_lectures::SphereParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_vision_lectures::SphereParams_<ContainerAllocator> const> ConstPtr;

}; // struct SphereParams_

typedef ::robot_vision_lectures::SphereParams_<std::allocator<void> > SphereParams;

typedef boost::shared_ptr< ::robot_vision_lectures::SphereParams > SphereParamsPtr;
typedef boost::shared_ptr< ::robot_vision_lectures::SphereParams const> SphereParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_vision_lectures::SphereParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_vision_lectures::SphereParams_<ContainerAllocator1> & lhs, const ::robot_vision_lectures::SphereParams_<ContainerAllocator2> & rhs)
{
  return lhs.xc == rhs.xc &&
    lhs.yc == rhs.yc &&
    lhs.zc == rhs.zc &&
    lhs.radius == rhs.radius;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_vision_lectures::SphereParams_<ContainerAllocator1> & lhs, const ::robot_vision_lectures::SphereParams_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_vision_lectures

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_vision_lectures::SphereParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_vision_lectures::SphereParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_vision_lectures::SphereParams_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e8b9db43e9aaaab48ea455f0546fdec2";
  }

  static const char* value(const ::robot_vision_lectures::SphereParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe8b9db43e9aaaab4ULL;
  static const uint64_t static_value2 = 0x8ea455f0546fdec2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_vision_lectures/SphereParams";
  }

  static const char* value(const ::robot_vision_lectures::SphereParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 xc\n"
"float32 yc\n"
"float32 zc\n"
"float32 radius\n"
;
  }

  static const char* value(const ::robot_vision_lectures::SphereParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xc);
      stream.next(m.yc);
      stream.next(m.zc);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SphereParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_vision_lectures::SphereParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_vision_lectures::SphereParams_<ContainerAllocator>& v)
  {
    s << indent << "xc: ";
    Printer<float>::stream(s, indent + "  ", v.xc);
    s << indent << "yc: ";
    Printer<float>::stream(s, indent + "  ", v.yc);
    s << indent << "zc: ";
    Printer<float>::stream(s, indent + "  ", v.zc);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_VISION_LECTURES_MESSAGE_SPHEREPARAMS_H