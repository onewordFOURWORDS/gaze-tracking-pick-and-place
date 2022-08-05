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

class Blob_Params {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_coord = null;
      this.y_coord = null;
      this.radius = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('x_coord')) {
        this.x_coord = initObj.x_coord
      }
      else {
        this.x_coord = 0;
      }
      if (initObj.hasOwnProperty('y_coord')) {
        this.y_coord = initObj.y_coord
      }
      else {
        this.y_coord = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Blob_Params
    // Serialize message field [x_coord]
    bufferOffset = _serializer.int32(obj.x_coord, buffer, bufferOffset);
    // Serialize message field [y_coord]
    bufferOffset = _serializer.int32(obj.y_coord, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.int32(obj.radius, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Blob_Params
    let len;
    let data = new Blob_Params(null);
    // Deserialize message field [x_coord]
    data.x_coord = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_coord]
    data.y_coord = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gaze_tracking/Blob_Params';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6a7bef06e2fbe7fca6bc92358ec6b49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 x_coord
    int32 y_coord
    int32 radius
    int8 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Blob_Params(null);
    if (msg.x_coord !== undefined) {
      resolved.x_coord = msg.x_coord;
    }
    else {
      resolved.x_coord = 0
    }

    if (msg.y_coord !== undefined) {
      resolved.y_coord = msg.y_coord;
    }
    else {
      resolved.y_coord = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = Blob_Params;
