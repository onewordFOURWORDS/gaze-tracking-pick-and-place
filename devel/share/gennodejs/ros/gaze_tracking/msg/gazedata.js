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
      this.BPOGX = null;
      this.BPOGY = null;
      this.BPOGV = null;
    }
    else {
      if (initObj.hasOwnProperty('BPOGX')) {
        this.BPOGX = initObj.BPOGX
      }
      else {
        this.BPOGX = 0.0;
      }
      if (initObj.hasOwnProperty('BPOGY')) {
        this.BPOGY = initObj.BPOGY
      }
      else {
        this.BPOGY = 0.0;
      }
      if (initObj.hasOwnProperty('BPOGV')) {
        this.BPOGV = initObj.BPOGV
      }
      else {
        this.BPOGV = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gazedata
    // Serialize message field [BPOGX]
    bufferOffset = _serializer.float32(obj.BPOGX, buffer, bufferOffset);
    // Serialize message field [BPOGY]
    bufferOffset = _serializer.float32(obj.BPOGY, buffer, bufferOffset);
    // Serialize message field [BPOGV]
    bufferOffset = _serializer.float32(obj.BPOGV, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gazedata
    let len;
    let data = new gazedata(null);
    // Deserialize message field [BPOGX]
    data.BPOGX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BPOGY]
    data.BPOGY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BPOGV]
    data.BPOGV = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gaze_tracking/gazedata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c468a841b881d4bc2e7c92a6284034c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 BPOGX
    float32 BPOGY
    float32 BPOGV
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gazedata(null);
    if (msg.BPOGX !== undefined) {
      resolved.BPOGX = msg.BPOGX;
    }
    else {
      resolved.BPOGX = 0.0
    }

    if (msg.BPOGY !== undefined) {
      resolved.BPOGY = msg.BPOGY;
    }
    else {
      resolved.BPOGY = 0.0
    }

    if (msg.BPOGV !== undefined) {
      resolved.BPOGV = msg.BPOGV;
    }
    else {
      resolved.BPOGV = 0.0
    }

    return resolved;
    }
};

module.exports = gazedata;
