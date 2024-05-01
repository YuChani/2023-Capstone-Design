; Auto-generated. Do not edit!


(cl:in-package servo_control-msg)


;//! \htmlinclude ServoPosition.msg.html

(cl:defclass <ServoPosition> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:float
    :initform 0.0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoPosition (<ServoPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_control-msg:<ServoPosition> is deprecated: use servo_control-msg:ServoPosition instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <ServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_control-msg:position1-val is deprecated.  Use servo_control-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <ServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_control-msg:position2-val is deprecated.  Use servo_control-msg:position2 instead.")
  (position2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoPosition>) ostream)
  "Serializes a message object of type '<ServoPosition>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoPosition>) istream)
  "Deserializes a message object of type '<ServoPosition>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoPosition>)))
  "Returns string type for a message object of type '<ServoPosition>"
  "servo_control/ServoPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoPosition)))
  "Returns string type for a message object of type 'ServoPosition"
  "servo_control/ServoPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoPosition>)))
  "Returns md5sum for a message object of type '<ServoPosition>"
  "447f297a244af47c60883d47a59bd156")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoPosition)))
  "Returns md5sum for a message object of type 'ServoPosition"
  "447f297a244af47c60883d47a59bd156")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoPosition>)))
  "Returns full string definition for message of type '<ServoPosition>"
  (cl:format cl:nil "float64 position1~%float64 position2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoPosition)))
  "Returns full string definition for message of type 'ServoPosition"
  (cl:format cl:nil "float64 position1~%float64 position2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoPosition>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoPosition
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
))
