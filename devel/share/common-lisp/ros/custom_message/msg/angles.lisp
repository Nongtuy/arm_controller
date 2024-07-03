; Auto-generated. Do not edit!


(cl:in-package custom_message-msg)


;//! \htmlinclude angles.msg.html

(cl:defclass <angles> (roslisp-msg-protocol:ros-message)
  ((theta1
    :reader theta1
    :initarg :theta1
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (theta2
    :reader theta2
    :initarg :theta2
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (theta3
    :reader theta3
    :initarg :theta3
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass angles (<angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_message-msg:<angles> is deprecated: use custom_message-msg:angles instead.")))

(cl:ensure-generic-function 'theta1-val :lambda-list '(m))
(cl:defmethod theta1-val ((m <angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_message-msg:theta1-val is deprecated.  Use custom_message-msg:theta1 instead.")
  (theta1 m))

(cl:ensure-generic-function 'theta2-val :lambda-list '(m))
(cl:defmethod theta2-val ((m <angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_message-msg:theta2-val is deprecated.  Use custom_message-msg:theta2 instead.")
  (theta2 m))

(cl:ensure-generic-function 'theta3-val :lambda-list '(m))
(cl:defmethod theta3-val ((m <angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_message-msg:theta3-val is deprecated.  Use custom_message-msg:theta3 instead.")
  (theta3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angles>) ostream)
  "Serializes a message object of type '<angles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angles>) istream)
  "Deserializes a message object of type '<angles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angles>)))
  "Returns string type for a message object of type '<angles>"
  "custom_message/angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angles)))
  "Returns string type for a message object of type 'angles"
  "custom_message/angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angles>)))
  "Returns md5sum for a message object of type '<angles>"
  "354d100d75e8581dc7dd85b447e1a363")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angles)))
  "Returns md5sum for a message object of type 'angles"
  "354d100d75e8581dc7dd85b447e1a363")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angles>)))
  "Returns full string definition for message of type '<angles>"
  (cl:format cl:nil "std_msgs/Float64 theta1~%std_msgs/Float64 theta2~%std_msgs/Float64 theta3~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angles)))
  "Returns full string definition for message of type 'angles"
  (cl:format cl:nil "std_msgs/Float64 theta1~%std_msgs/Float64 theta2~%std_msgs/Float64 theta3~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angles>))
  "Converts a ROS message object to a list"
  (cl:list 'angles
    (cl:cons ':theta1 (theta1 msg))
    (cl:cons ':theta2 (theta2 msg))
    (cl:cons ':theta3 (theta3 msg))
))
