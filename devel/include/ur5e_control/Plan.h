// Generated by gencpp from file ur5e_control/Plan.msg
// DO NOT EDIT!


#ifndef UR5E_CONTROL_MESSAGE_PLAN_H
#define UR5E_CONTROL_MESSAGE_PLAN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace ur5e_control
{
template <class ContainerAllocator>
struct Plan_
{
  typedef Plan_<ContainerAllocator> Type;

  Plan_()
    : point()  {
    }
  Plan_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Twist_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Twist_<ContainerAllocator> >::other >  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::ur5e_control::Plan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur5e_control::Plan_<ContainerAllocator> const> ConstPtr;

}; // struct Plan_

typedef ::ur5e_control::Plan_<std::allocator<void> > Plan;

typedef boost::shared_ptr< ::ur5e_control::Plan > PlanPtr;
typedef boost::shared_ptr< ::ur5e_control::Plan const> PlanConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur5e_control::Plan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur5e_control::Plan_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ur5e_control::Plan_<ContainerAllocator1> & lhs, const ::ur5e_control::Plan_<ContainerAllocator2> & rhs)
{
  return lhs.point == rhs.point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ur5e_control::Plan_<ContainerAllocator1> & lhs, const ::ur5e_control::Plan_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ur5e_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ur5e_control::Plan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur5e_control::Plan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur5e_control::Plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur5e_control::Plan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5e_control::Plan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur5e_control::Plan_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur5e_control::Plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "294113bb7631d82f82b9aeb128d287f2";
  }

  static const char* value(const ::ur5e_control::Plan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x294113bb7631d82fULL;
  static const uint64_t static_value2 = 0x82b9aeb128d287f2ULL;
};

template<class ContainerAllocator>
struct DataType< ::ur5e_control::Plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur5e_control/Plan";
  }

  static const char* value(const ::ur5e_control::Plan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur5e_control::Plan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Twist[] point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::ur5e_control::Plan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur5e_control::Plan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Plan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur5e_control::Plan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur5e_control::Plan_<ContainerAllocator>& v)
  {
    s << indent << "point[]" << std::endl;
    for (size_t i = 0; i < v.point.size(); ++i)
    {
      s << indent << "  point[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "    ", v.point[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR5E_CONTROL_MESSAGE_PLAN_H
