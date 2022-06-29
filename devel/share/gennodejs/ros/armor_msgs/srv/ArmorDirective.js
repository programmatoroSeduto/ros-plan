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

class ArmorDirectiveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armor_request = null;
    }
    else {
      if (initObj.hasOwnProperty('armor_request')) {
        this.armor_request = initObj.armor_request
      }
      else {
        this.armor_request = new ArmorDirectiveReq();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveRequest
    // Serialize message field [armor_request]
    bufferOffset = ArmorDirectiveReq.serialize(obj.armor_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveRequest
    let len;
    let data = new ArmorDirectiveRequest(null);
    // Deserialize message field [armor_request]
    data.armor_request = ArmorDirectiveReq.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmorDirectiveReq.getMessageSize(object.armor_request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'armor_msgs/ArmorDirectiveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dd786c47e3f813a5233dff98bbcad0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmorDirectiveReq armor_request
    
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
    const resolved = new ArmorDirectiveRequest(null);
    if (msg.armor_request !== undefined) {
      resolved.armor_request = ArmorDirectiveReq.Resolve(msg.armor_request)
    }
    else {
      resolved.armor_request = new ArmorDirectiveReq()
    }

    return resolved;
    }
};

class ArmorDirectiveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armor_response = null;
    }
    else {
      if (initObj.hasOwnProperty('armor_response')) {
        this.armor_response = initObj.armor_response
      }
      else {
        this.armor_response = new ArmorDirectiveRes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveResponse
    // Serialize message field [armor_response]
    bufferOffset = ArmorDirectiveRes.serialize(obj.armor_response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveResponse
    let len;
    let data = new ArmorDirectiveResponse(null);
    // Deserialize message field [armor_response]
    data.armor_response = ArmorDirectiveRes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmorDirectiveRes.getMessageSize(object.armor_response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'armor_msgs/ArmorDirectiveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87426bc7efd8a82957435c59be4712e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmorDirectiveRes armor_response
    
    
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
    const resolved = new ArmorDirectiveResponse(null);
    if (msg.armor_response !== undefined) {
      resolved.armor_response = ArmorDirectiveRes.Resolve(msg.armor_response)
    }
    else {
      resolved.armor_response = new ArmorDirectiveRes()
    }

    return resolved;
    }
};

module.exports = {
  Request: ArmorDirectiveRequest,
  Response: ArmorDirectiveResponse,
  md5sum() { return '39cbf11e18dc47e2c7b5fda84e5d8c39'; },
  datatype() { return 'armor_msgs/ArmorDirective'; }
};
