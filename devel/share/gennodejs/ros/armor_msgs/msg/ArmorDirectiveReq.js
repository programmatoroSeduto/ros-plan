// Auto-generated. Do not edit!

// (in-package armor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ArmorDirectiveReq {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.client_name = null;
      this.reference_name = null;
      this.command = null;
      this.primary_command_spec = null;
      this.secondary_command_spec = null;
      this.args = null;
    }
    else {
      if (initObj.hasOwnProperty('client_name')) {
        this.client_name = initObj.client_name
      }
      else {
        this.client_name = '';
      }
      if (initObj.hasOwnProperty('reference_name')) {
        this.reference_name = initObj.reference_name
      }
      else {
        this.reference_name = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('primary_command_spec')) {
        this.primary_command_spec = initObj.primary_command_spec
      }
      else {
        this.primary_command_spec = '';
      }
      if (initObj.hasOwnProperty('secondary_command_spec')) {
        this.secondary_command_spec = initObj.secondary_command_spec
      }
      else {
        this.secondary_command_spec = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmorDirectiveReq
    // Serialize message field [client_name]
    bufferOffset = _serializer.string(obj.client_name, buffer, bufferOffset);
    // Serialize message field [reference_name]
    bufferOffset = _serializer.string(obj.reference_name, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [primary_command_spec]
    bufferOffset = _serializer.string(obj.primary_command_spec, buffer, bufferOffset);
    // Serialize message field [secondary_command_spec]
    bufferOffset = _serializer.string(obj.secondary_command_spec, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _arraySerializer.string(obj.args, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmorDirectiveReq
    let len;
    let data = new ArmorDirectiveReq(null);
    // Deserialize message field [client_name]
    data.client_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reference_name]
    data.reference_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primary_command_spec]
    data.primary_command_spec = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [secondary_command_spec]
    data.secondary_command_spec = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.client_name);
    length += _getByteLength(object.reference_name);
    length += _getByteLength(object.command);
    length += _getByteLength(object.primary_command_spec);
    length += _getByteLength(object.secondary_command_spec);
    object.args.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'armor_msgs/ArmorDirectiveReq';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '385184fa98c36b7f00729ae2078dfc92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ArmorDirectiveReq(null);
    if (msg.client_name !== undefined) {
      resolved.client_name = msg.client_name;
    }
    else {
      resolved.client_name = ''
    }

    if (msg.reference_name !== undefined) {
      resolved.reference_name = msg.reference_name;
    }
    else {
      resolved.reference_name = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.primary_command_spec !== undefined) {
      resolved.primary_command_spec = msg.primary_command_spec;
    }
    else {
      resolved.primary_command_spec = ''
    }

    if (msg.secondary_command_spec !== undefined) {
      resolved.secondary_command_spec = msg.secondary_command_spec;
    }
    else {
      resolved.secondary_command_spec = ''
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = []
    }

    return resolved;
    }
};

module.exports = ArmorDirectiveReq;
