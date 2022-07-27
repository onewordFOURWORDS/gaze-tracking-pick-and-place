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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.modes = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('modes')) {
        this.modes = initObj.modes
      }
      else {
        this.modes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Plan
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Twist.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [modes]
    // Serialize the length for message field [modes]
    bufferOffset = _serializer.uint32(obj.modes.length, buffer, bufferOffset);
    obj.modes.forEach((val) => {
      bufferOffset = std_msgs.msg.UInt8.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Plan
    let len;
    let data = new Plan(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [modes]
    // Deserialize array length for message field [modes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.modes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.modes[i] = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.points.length;
    length += object.modes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur5e_control/Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '043039bf6ff80e5c7934062c274c6649';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist[] points
    std_msgs/UInt8[] modes
    
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
    ================================================================================
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Plan(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Twist.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.modes !== undefined) {
      resolved.modes = new Array(msg.modes.length);
      for (let i = 0; i < resolved.modes.length; ++i) {
        resolved.modes[i] = std_msgs.msg.UInt8.Resolve(msg.modes[i]);
      }
    }
    else {
      resolved.modes = []
    }

    return resolved;
    }
};

module.exports = Plan;
