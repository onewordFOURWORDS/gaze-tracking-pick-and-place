// Generated by gencpp from file Robotics_Report2/Blob_Params.msg
// DO NOT EDIT!


#ifndef ROBOTICS_REPORT2_MESSAGE_BLOB_PARAMS_H
#define ROBOTICS_REPORT2_MESSAGE_BLOB_PARAMS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Robotics_Report2
{
template <class ContainerAllocator>
struct Blob_Params_
{
  typedef Blob_Params_<ContainerAllocator> Type;

  Blob_Params_()
    : x_coord(0)
    , y_coord(0)
    , radius(0)  {
    }
  Blob_Params_(const ContainerAllocator& _alloc)
    : x_coord(0)
    , y_coord(0)
    , radius(0)  {
  (void)_alloc;
    }



   typedef int8_t _x_coord_type;
  _x_coord_type x_coord;

   typedef int8_t _y_coord_type;
  _y_coord_type y_coord;

   typedef int8_t _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::Robotics_Report2::Blob_Params_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Robotics_Report2::Blob_Params_<ContainerAllocator> const> ConstPtr;

}; // struct Blob_Params_

typedef ::Robotics_Report2::Blob_Params_<std::allocator<void> > Blob_Params;

typedef boost::shared_ptr< ::Robotics_Report2::Blob_Params > Blob_ParamsPtr;
typedef boost::shared_ptr< ::Robotics_Report2::Blob_Params const> Blob_ParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Robotics_Report2::Blob_Params_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Robotics_Report2::Blob_Params_<ContainerAllocator1> & lhs, const ::Robotics_Report2::Blob_Params_<ContainerAllocator2> & rhs)
{
  return lhs.x_coord == rhs.x_coord &&
    lhs.y_coord == rhs.y_coord &&
    lhs.radius == rhs.radius;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Robotics_Report2::Blob_Params_<ContainerAllocator1> & lhs, const ::Robotics_Report2::Blob_Params_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Robotics_Report2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Robotics_Report2::Blob_Params_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Robotics_Report2::Blob_Params_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robotics_Report2::Blob_Params_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27713404fd77ebe3383ee286844ae54f";
  }

  static const char* value(const ::Robotics_Report2::Blob_Params_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27713404fd77ebe3ULL;
  static const uint64_t static_value2 = 0x383ee286844ae54fULL;
};

template<class ContainerAllocator>
struct DataType< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Robotics_Report2/Blob_Params";
  }

  static const char* value(const ::Robotics_Report2::Blob_Params_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 x_coord\n"
"int8 y_coord\n"
"int8 radius\n"
;
  }

  static const char* value(const ::Robotics_Report2::Blob_Params_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_coord);
      stream.next(m.y_coord);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Blob_Params_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Robotics_Report2::Blob_Params_<ContainerAllocator>& v)
  {
    s << indent << "x_coord: ";
    Printer<int8_t>::stream(s, indent + "  ", v.x_coord);
    s << indent << "y_coord: ";
    Printer<int8_t>::stream(s, indent + "  ", v.y_coord);
    s << indent << "radius: ";
    Printer<int8_t>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTICS_REPORT2_MESSAGE_BLOB_PARAMS_H