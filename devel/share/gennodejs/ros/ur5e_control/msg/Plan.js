// Auto-generated. Do not edit!

// (in-package ur5e_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plan
    // Serialize message field [point]
    // Serialize the length for message field [point]
    bufferOffset = _serializer.uint32(obj.point.length, buffer, bufferOffset);
    obj.point.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Twist.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plan
    let len;
    let data = new Plan(null);
    // Deserialize message field [point]
    // Deserialize array length for message field [point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.point[i] = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.point.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5e_control/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '294113bb7631d82f82b9aeb128d287f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist[] point
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plan(null);
    if (msg.point !== undefined) {
      resolved.point = new Array(msg.point.length);
      for (let i = 0; i < resolved.point.length; ++i) {
        resolved.point[i] = geometry_msgs.msg.Twist.Resolve(msg.point[i]);
      }
    }
    else {
      resolved.point = []
    }

    return resolved;
    }
};

module.exports = Plan;
