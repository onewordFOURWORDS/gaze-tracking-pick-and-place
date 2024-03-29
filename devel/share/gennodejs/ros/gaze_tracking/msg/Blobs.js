// Auto-generated. Do not edit!

// (in-package gaze_tracking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Blob_Params = require('./Blob_Params.js');

//-----------------------------------------------------------

class Blobs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.blob_list = null;
    }
    else {
      if (initObj.hasOwnProperty('blob_list')) {
        this.blob_list = initObj.blob_list
      }
      else {
        this.blob_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Blobs
    // Serialize message field [blob_list]
    // Serialize the length for message field [blob_list]
    bufferOffset = _serializer.uint32(obj.blob_list.length, buffer, bufferOffset);
    obj.blob_list.forEach((val) => {
      bufferOffset = Blob_Params.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Blobs
    let len;
    let data = new Blobs(null);
    // Deserialize message field [blob_list]
    // Deserialize array length for message field [blob_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blob_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blob_list[i] = Blob_Params.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.blob_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gaze_tracking/Blobs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5544317ff6fcb345e7b3bfefa4c6bf5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    gaze_tracking/Blob_Params[] blob_list
    
    ================================================================================
    MSG: gaze_tracking/Blob_Params
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
    const resolved = new Blobs(null);
    if (msg.blob_list !== undefined) {
      resolved.blob_list = new Array(msg.blob_list.length);
      for (let i = 0; i < resolved.blob_list.length; ++i) {
        resolved.blob_list[i] = Blob_Params.Resolve(msg.blob_list[i]);
      }
    }
    else {
      resolved.blob_list = []
    }

    return resolved;
    }
};

module.exports = Blobs;
