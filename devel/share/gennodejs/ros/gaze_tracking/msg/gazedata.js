// Auto-generated. Do not edit!

// (in-package gaze_tracking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gazedata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.POGX = null;
      this.POGY = null;
      this.POGV = null;
      this.POGD = null;
    }
    else {
      if (initObj.hasOwnProperty('POGX')) {
        this.POGX = initObj.POGX
      }
      else {
        this.POGX = 0.0;
      }
      if (initObj.hasOwnProperty('POGY')) {
        this.POGY = initObj.POGY
      }
      else {
        this.POGY = 0.0;
      }
      if (initObj.hasOwnProperty('POGV')) {
        this.POGV = initObj.POGV
      }
      else {
        this.POGV = 0.0;
      }
      if (initObj.hasOwnProperty('POGD')) {
        this.POGD = initObj.POGD
      }
      else {
        this.POGD = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gazedata
    // Serialize message field [POGX]
    bufferOffset = _serializer.float32(obj.POGX, buffer, bufferOffset);
    // Serialize message field [POGY]
    bufferOffset = _serializer.float32(obj.POGY, buffer, bufferOffset);
    // Serialize message field [POGV]
    bufferOffset = _serializer.float32(obj.POGV, buffer, bufferOffset);
    // Serialize message field [POGD]
    bufferOffset = _serializer.float32(obj.POGD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gazedata
    let len;
    let data = new gazedata(null);
    // Deserialize message field [POGX]
    data.POGX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [POGY]
    data.POGY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [POGV]
    data.POGV = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [POGD]
    data.POGD = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gaze_tracking/gazedata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70030c120d5acadb46335a6d55bdf388';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 POGX
    float32 POGY
    float32 POGV
    float32 POGD
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gazedata(null);
    if (msg.POGX !== undefined) {
      resolved.POGX = msg.POGX;
    }
    else {
      resolved.POGX = 0.0
    }

    if (msg.POGY !== undefined) {
      resolved.POGY = msg.POGY;
    }
    else {
      resolved.POGY = 0.0
    }

    if (msg.POGV !== undefined) {
      resolved.POGV = msg.POGV;
    }
    else {
      resolved.POGV = 0.0
    }

    if (msg.POGD !== undefined) {
      resolved.POGD = msg.POGD;
    }
    else {
      resolved.POGD = 0.0
    }

    return resolved;
    }
};

module.exports = gazedata;
