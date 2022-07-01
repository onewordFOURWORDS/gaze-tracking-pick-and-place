// Generated by gencpp from file gaze_tracking/gazedata.msg
// DO NOT EDIT!


#ifndef GAZE_TRACKING_MESSAGE_GAZEDATA_H
#define GAZE_TRACKING_MESSAGE_GAZEDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gaze_tracking
{
template <class ContainerAllocator>
struct gazedata_
{
  typedef gazedata_<ContainerAllocator> Type;

  gazedata_()
    : POGX(0.0)
    , POGY(0.0)
    , POGV(0.0)
    , POGD(0.0)  {
    }
  gazedata_(const ContainerAllocator& _alloc)
    : POGX(0.0)
    , POGY(0.0)
    , POGV(0.0)
    , POGD(0.0)  {
  (void)_alloc;
    }



   typedef float _POGX_type;
  _POGX_type POGX;

   typedef float _POGY_type;
  _POGY_type POGY;

   typedef float _POGV_type;
  _POGV_type POGV;

   typedef float _POGD_type;
  _POGD_type POGD;





  typedef boost::shared_ptr< ::gaze_tracking::gazedata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gaze_tracking::gazedata_<ContainerAllocator> const> ConstPtr;

}; // struct gazedata_

typedef ::gaze_tracking::gazedata_<std::allocator<void> > gazedata;

typedef boost::shared_ptr< ::gaze_tracking::gazedata > gazedataPtr;
typedef boost::shared_ptr< ::gaze_tracking::gazedata const> gazedataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gaze_tracking::gazedata_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gaze_tracking::gazedata_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gaze_tracking::gazedata_<ContainerAllocator1> & lhs, const ::gaze_tracking::gazedata_<ContainerAllocator2> & rhs)
{
  return lhs.POGX == rhs.POGX &&
    lhs.POGY == rhs.POGY &&
    lhs.POGV == rhs.POGV &&
    lhs.POGD == rhs.POGD;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gaze_tracking::gazedata_<ContainerAllocator1> & lhs, const ::gaze_tracking::gazedata_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gaze_tracking

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gaze_tracking::gazedata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gaze_tracking::gazedata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gaze_tracking::gazedata_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gaze_tracking::gazedata_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gaze_tracking::gazedata_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gaze_tracking::gazedata_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gaze_tracking::gazedata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "70030c120d5acadb46335a6d55bdf388";
  }

  static const char* value(const ::gaze_tracking::gazedata_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x70030c120d5acadbULL;
  static const uint64_t static_value2 = 0x46335a6d55bdf388ULL;
};

template<class ContainerAllocator>
struct DataType< ::gaze_tracking::gazedata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gaze_tracking/gazedata";
  }

  static const char* value(const ::gaze_tracking::gazedata_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gaze_tracking::gazedata_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 POGX\n"
"float32 POGY\n"
"float32 POGV\n"
"float32 POGD\n"
;
  }

  static const char* value(const ::gaze_tracking::gazedata_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gaze_tracking::gazedata_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.POGX);
      stream.next(m.POGY);
      stream.next(m.POGV);
      stream.next(m.POGD);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gazedata_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gaze_tracking::gazedata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gaze_tracking::gazedata_<ContainerAllocator>& v)
  {
    s << indent << "POGX: ";
    Printer<float>::stream(s, indent + "  ", v.POGX);
    s << indent << "POGY: ";
    Printer<float>::stream(s, indent + "  ", v.POGY);
    s << indent << "POGV: ";
    Printer<float>::stream(s, indent + "  ", v.POGV);
    s << indent << "POGD: ";
    Printer<float>::stream(s, indent + "  ", v.POGD);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZE_TRACKING_MESSAGE_GAZEDATA_H
