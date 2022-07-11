// Auto-generated. Do not edit!

// (in-package robot_vision_lectures.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SphereParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xc = null;
      this.yc = null;
      this.zc = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('xc')) {
        this.xc = initObj.xc
      }
      else {
        this.xc = 0.0;
      }
      if (initObj.hasOwnProperty('yc')) {
        this.yc = initObj.yc
      }
      else {
        this.yc = 0.0;
      }
      if (initObj.hasOwnProperty('zc')) {
        this.zc = initObj.zc
      }
      else {
        this.zc = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SphereParams
    // Serialize message field [xc]
    bufferOffset = _serializer.float32(obj.xc, buffer, bufferOffset);
    // Serialize message field [yc]
    bufferOffset = _serializer.float32(obj.yc, buffer, bufferOffset);
    // Serialize message field [zc]
    bufferOffset = _serializer.float32(obj.zc, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SphereParams
    let len;
    let data = new SphereParams(null);
    // Deserialize message field [xc]
    data.xc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yc]
    data.yc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zc]
    data.zc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_vision_lectures/SphereParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8b9db43e9aaaab48ea455f0546fdec2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 xc
    float32 yc
    float32 zc
    float32 radius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SphereParams(null);
    if (msg.xc !== undefined) {
      resolved.xc = msg.xc;
    }
    else {
      resolved.xc = 0.0
    }

    if (msg.yc !== undefined) {
      resolved.yc = msg.yc;
    }
    else {
      resolved.yc = 0.0
    }

    if (msg.zc !== undefined) {
      resolved.zc = msg.zc;
    }
    else {
      resolved.zc = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    return resolved;
    }
};

module.exports = SphereParams;
