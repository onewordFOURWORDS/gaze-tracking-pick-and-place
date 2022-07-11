// Generated by gencpp from file Robotics_Report2/Blobs.msg
// DO NOT EDIT!


#ifndef ROBOTICS_REPORT2_MESSAGE_BLOBS_H
#define ROBOTICS_REPORT2_MESSAGE_BLOBS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <Robotics_Report2/Blob_Params.h>

namespace Robotics_Report2
{
template <class ContainerAllocator>
struct Blobs_
{
  typedef Blobs_<ContainerAllocator> Type;

  Blobs_()
    : blob_list()  {
    }
  Blobs_(const ContainerAllocator& _alloc)
    : blob_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::Robotics_Report2::Blob_Params_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >::other >  _blob_list_type;
  _blob_list_type blob_list;





  typedef boost::shared_ptr< ::Robotics_Report2::Blobs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Robotics_Report2::Blobs_<ContainerAllocator> const> ConstPtr;

}; // struct Blobs_

typedef ::Robotics_Report2::Blobs_<std::allocator<void> > Blobs;

typedef boost::shared_ptr< ::Robotics_Report2::Blobs > BlobsPtr;
typedef boost::shared_ptr< ::Robotics_Report2::Blobs const> BlobsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Robotics_Report2::Blobs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Robotics_Report2::Blobs_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Robotics_Report2::Blobs_<ContainerAllocator1> & lhs, const ::Robotics_Report2::Blobs_<ContainerAllocator2> & rhs)
{
  return lhs.blob_list == rhs.blob_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Robotics_Report2::Blobs_<ContainerAllocator1> & lhs, const ::Robotics_Report2::Blobs_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Robotics_Report2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::Robotics_Report2::Blobs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Robotics_Report2::Blobs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Robotics_Report2::Blobs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Robotics_Report2::Blobs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robotics_Report2::Blobs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robotics_Report2::Blobs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Robotics_Report2::Blobs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2836b3623ac455b4a432ee2fdf4d41d";
  }

  static const char* value(const ::Robotics_Report2::Blobs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2836b3623ac455bULL;
  static const uint64_t static_value2 = 0x4a432ee2fdf4d41dULL;
};

template<class ContainerAllocator>
struct DataType< ::Robotics_Report2::Blobs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Robotics_Report2/Blobs";
  }

  static const char* value(const ::Robotics_Report2::Blobs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Robotics_Report2::Blobs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Robotics_Report2/Blob_Params[] blob_list\n"
"\n"
"================================================================================\n"
"MSG: Robotics_Report2/Blob_Params\n"
"int8 x_coord\n"
"int8 y_coord\n"
"int8 radius\n"
;
  }

  static const char* value(const ::Robotics_Report2::Blobs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Robotics_Report2::Blobs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.blob_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Blobs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Robotics_Report2::Blobs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Robotics_Report2::Blobs_<ContainerAllocator>& v)
  {
    s << indent << "blob_list[]" << std::endl;
    for (size_t i = 0; i < v.blob_list.size(); ++i)
    {
      s << indent << "  blob_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::Robotics_Report2::Blob_Params_<ContainerAllocator> >::stream(s, indent + "    ", v.blob_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTICS_REPORT2_MESSAGE_BLOBS_H
