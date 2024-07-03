// Auto-generated. Do not edit!

// (in-package custom_message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta1 = null;
      this.theta2 = null;
      this.theta3 = null;
    }
    else {
      if (initObj.hasOwnProperty('theta1')) {
        this.theta1 = initObj.theta1
      }
      else {
        this.theta1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('theta2')) {
        this.theta2 = initObj.theta2
      }
      else {
        this.theta2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('theta3')) {
        this.theta3 = initObj.theta3
      }
      else {
        this.theta3 = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type angles
    // Serialize message field [theta1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.theta1, buffer, bufferOffset);
    // Serialize message field [theta2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.theta2, buffer, bufferOffset);
    // Serialize message field [theta3]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.theta3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type angles
    let len;
    let data = new angles(null);
    // Deserialize message field [theta1]
    data.theta1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta2]
    data.theta2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta3]
    data.theta3 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_message/angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '354d100d75e8581dc7dd85b447e1a363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64 theta1
    std_msgs/Float64 theta2
    std_msgs/Float64 theta3
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new angles(null);
    if (msg.theta1 !== undefined) {
      resolved.theta1 = std_msgs.msg.Float64.Resolve(msg.theta1)
    }
    else {
      resolved.theta1 = new std_msgs.msg.Float64()
    }

    if (msg.theta2 !== undefined) {
      resolved.theta2 = std_msgs.msg.Float64.Resolve(msg.theta2)
    }
    else {
      resolved.theta2 = new std_msgs.msg.Float64()
    }

    if (msg.theta3 !== undefined) {
      resolved.theta3 = std_msgs.msg.Float64.Resolve(msg.theta3)
    }
    else {
      resolved.theta3 = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = angles;
