// Auto-generated. Do not edit!

// (in-package armor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArmorDirectiveReq = require('../msg/ArmorDirectiveReq.js');

//-----------------------------------------------------------

let ArmorDirectiveRes = require('../msg/ArmorDirectiveRes.js');

//-----------------------------------------------------------

class ArmorDirectiveListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armor_requests = null;
    }
    else {
      if (initObj.hasOwnProperty('armor_requests')) {
        this.armor_requests = initObj.armor_requests
      }
      else {
        this.armor_requests = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveListRequest
    // Serialize message field [armor_requests]
    // Serialize the length for message field [armor_requests]
    bufferOffset = _serializer.uint32(obj.armor_requests.length, buffer, bufferOffset);
    obj.armor_requests.forEach((val) => {
      bufferOffset = ArmorDirectiveReq.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveListRequest
    let len;
    let data = new ArmorDirectiveListRequest(null);
    // Deserialize message field [armor_requests]
    // Deserialize array length for message field [armor_requests]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.armor_requests = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.armor_requests[i] = ArmorDirectiveReq.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.armor_requests.forEach((val) => {
      length += ArmorDirectiveReq.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'armor_msgs/ArmorDirectiveListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b6fe8f675c901087d462c04d41f94e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmorDirectiveReq[] armor_requests
    
    ================================================================================
    MSG: armor_msgs/ArmorDirectiveReq
    string client_name
    string reference_name
    string command
    string primary_command_spec
    string secondary_command_spec
    string[] args
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmorDirectiveListRequest(null);
    if (msg.armor_requests !== undefined) {
      resolved.armor_requests = new Array(msg.armor_requests.length);
      for (let i = 0; i < resolved.armor_requests.length; ++i) {
        resolved.armor_requests[i] = ArmorDirectiveReq.Resolve(msg.armor_requests[i]);
      }
    }
    else {
      resolved.armor_requests = []
    }

    return resolved;
    }
};

class ArmorDirectiveListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.is_consistent = null;
      this.armor_responses = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('is_consistent')) {
        this.is_consistent = initObj.is_consistent
      }
      else {
        this.is_consistent = false;
      }
      if (initObj.hasOwnProperty('armor_responses')) {
        this.armor_responses = initObj.armor_responses
      }
      else {
        this.armor_responses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [is_consistent]
    bufferOffset = _serializer.bool(obj.is_consistent, buffer, bufferOffset);
    // Serialize message field [armor_responses]
    // Serialize the length for message field [armor_responses]
    bufferOffset = _serializer.uint32(obj.armor_responses.length, buffer, bufferOffset);
    obj.armor_responses.forEach((val) => {
      bufferOffset = ArmorDirectiveRes.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveListResponse
    let len;
    let data = new ArmorDirectiveListResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_consistent]
    data.is_consistent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armor_responses]
    // Deserialize array length for message field [armor_responses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.armor_responses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.armor_responses[i] = ArmorDirectiveRes.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.armor_responses.forEach((val) => {
      length += ArmorDirectiveRes.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'armor_msgs/ArmorDirectiveListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c0fa5cf51108b15b8fe923993bd9ed5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool is_consistent
    ArmorDirectiveRes[] armor_responses
    
    ================================================================================
    MSG: armor_msgs/ArmorDirectiveRes
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
    const resolved = new ArmorDirectiveListResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.is_consistent !== undefined) {
      resolved.is_consistent = msg.is_consistent;
    }
    else {
      resolved.is_consistent = false
    }

    if (msg.armor_responses !== undefined) {
      resolved.armor_responses = new Array(msg.armor_responses.length);
      for (let i = 0; i < resolved.armor_responses.length; ++i) {
        resolved.armor_responses[i] = ArmorDirectiveRes.Resolve(msg.armor_responses[i]);
      }
    }
    else {
      resolved.armor_responses = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ArmorDirectiveListRequest,
  Response: ArmorDirectiveListResponse,
  md5sum() { return 'c8f7a3567fd279dae5ca45853049f5a7'; },
  datatype() { return 'armor_msgs/ArmorDirectiveList'; }
};
