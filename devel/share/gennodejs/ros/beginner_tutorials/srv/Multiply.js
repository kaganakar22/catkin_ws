// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MultiplyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int64(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyRequest
    let len;
    let data = new MultiplyRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/MultiplyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36d09b846be0b371c5f190354dd3153e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a
    int64 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

class MultiplyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multiply = null;
    }
    else {
      if (initObj.hasOwnProperty('multiply')) {
        this.multiply = initObj.multiply
      }
      else {
        this.multiply = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiplyResponse
    // Serialize message field [multiply]
    bufferOffset = _serializer.int64(obj.multiply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiplyResponse
    let len;
    let data = new MultiplyResponse(null);
    // Deserialize message field [multiply]
    data.multiply = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/MultiplyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eac2a093183056a702753430acdfb73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 multiply
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiplyResponse(null);
    if (msg.multiply !== undefined) {
      resolved.multiply = msg.multiply;
    }
    else {
      resolved.multiply = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MultiplyRequest,
  Response: MultiplyResponse,
  md5sum() { return '51d0ada50d2055f1c9c8992c5c64d6e1'; },
  datatype() { return 'beginner_tutorials/Multiply'; }
};
