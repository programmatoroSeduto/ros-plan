// Auto-generated. Do not edit!

// (in-package armor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let QueryItem = require('./QueryItem.js');

//-----------------------------------------------------------

class ArmorDirectiveRes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.timeout = null;
      this.exit_code = null;
      this.error_description = null;
      this.is_consistent = null;
      this.queried_objects = null;
      this.sparql_queried_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = false;
      }
      if (initObj.hasOwnProperty('exit_code')) {
        this.exit_code = initObj.exit_code
      }
      else {
        this.exit_code = 0;
      }
      if (initObj.hasOwnProperty('error_description')) {
        this.error_description = initObj.error_description
      }
      else {
        this.error_description = '';
      }
      if (initObj.hasOwnProperty('is_consistent')) {
        this.is_consistent = initObj.is_consistent
      }
      else {
        this.is_consistent = false;
      }
      if (initObj.hasOwnProperty('queried_objects')) {
        this.queried_objects = initObj.queried_objects
      }
      else {
        this.queried_objects = [];
      }
      if (initObj.hasOwnProperty('sparql_queried_objects')) {
        this.sparql_queried_objects = initObj.sparql_queried_objects
      }
      else {
        this.sparql_queried_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveRes
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.bool(obj.timeout, buffer, bufferOffset);
    // Serialize message field [exit_code]
    bufferOffset = _serializer.int32(obj.exit_code, buffer, bufferOffset);
    // Serialize message field [error_description]
    bufferOffset = _serializer.string(obj.error_description, buffer, bufferOffset);
    // Serialize message field [is_consistent]
    bufferOffset = _serializer.bool(obj.is_consistent, buffer, bufferOffset);
    // Serialize message field [queried_objects]
    bufferOffset = _arraySerializer.string(obj.queried_objects, buffer, bufferOffset, null);
    // Serialize message field [sparql_queried_objects]
    // Serialize the length for message field [sparql_queried_objects]
    bufferOffset = _serializer.uint32(obj.sparql_queried_objects.length, buffer, bufferOffset);
    obj.sparql_queried_objects.forEach((val) => {
      bufferOffset = QueryItem.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveRes
    let len;
    let data = new ArmorDirectiveRes(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [exit_code]
    data.exit_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_description]
    data.error_description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_consistent]
    data.is_consistent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [queried_objects]
    data.queried_objects = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sparql_queried_objects]
    // Deserialize array length for message field [sparql_queried_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sparql_queried_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sparql_queried_objects[i] = QueryItem.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_description);
    object.queried_objects.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.sparql_queried_objects.forEach((val) => {
      length += QueryItem.getMessageSize(val);
    });
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'armor_msgs/ArmorDirectiveRes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6846cf2c4447d7c66f608d63e1f65e77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool timeout
    int32 exit_code
    string error_description
    bool is_consistent
    string[] queried_objects
    QueryItem[] sparql_queried_objects
    ================================================================================
    MSG: armor_msgs/QueryItem
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmorDirectiveRes(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = false
    }

    if (msg.exit_code !== undefined) {
      resolved.exit_code = msg.exit_code;
    }
    else {
      resolved.exit_code = 0
    }

    if (msg.error_description !== undefined) {
      resolved.error_description = msg.error_description;
    }
    else {
      resolved.error_description = ''
    }

    if (msg.is_consistent !== undefined) {
      resolved.is_consistent = msg.is_consistent;
    }
    else {
      resolved.is_consistent = false
    }

    if (msg.queried_objects !== undefined) {
      resolved.queried_objects = msg.queried_objects;
    }
    else {
      resolved.queried_objects = []
    }

    if (msg.sparql_queried_objects !== undefined) {
      resolved.sparql_queried_objects = new Array(msg.sparql_queried_objects.length);
      for (let i = 0; i < resolved.sparql_queried_objects.length; ++i) {
        resolved.sparql_queried_objects[i] = QueryItem.Resolve(msg.sparql_queried_objects[i]);
      }
    }
    else {
      resolved.sparql_queried_objects = []
    }

    return resolved;
    }
};

module.exports = ArmorDirectiveRes;
