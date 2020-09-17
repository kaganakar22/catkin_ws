; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude multiply-request.msg.html

(cl:defclass <multiply-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass multiply-request (<multiply-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multiply-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multiply-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<multiply-request> is deprecated: use beginner_tutorials-srv:multiply-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multiply-request>) ostream)
  "Serializes a message object of type '<multiply-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multiply-request>) istream)
  "Deserializes a message object of type '<multiply-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multiply-request>)))
  "Returns string type for a service object of type '<multiply-request>"
  "beginner_tutorials/multiplyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiply-request)))
  "Returns string type for a service object of type 'multiply-request"
  "beginner_tutorials/multiplyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multiply-request>)))
  "Returns md5sum for a message object of type '<multiply-request>"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multiply-request)))
  "Returns md5sum for a message object of type 'multiply-request"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multiply-request>)))
  "Returns full string definition for message of type '<multiply-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multiply-request)))
  "Returns full string definition for message of type 'multiply-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multiply-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multiply-request>))
  "Converts a ROS message object to a list"
  (cl:list 'multiply-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude multiply-response.msg.html

(cl:defclass <multiply-response> (roslisp-msg-protocol:ros-message)
  ((multiply
    :reader multiply
    :initarg :multiply
    :type cl:integer
    :initform 0))
)

(cl:defclass multiply-response (<multiply-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multiply-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multiply-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<multiply-response> is deprecated: use beginner_tutorials-srv:multiply-response instead.")))

(cl:ensure-generic-function 'multiply-val :lambda-list '(m))
(cl:defmethod multiply-val ((m <multiply-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:multiply-val is deprecated.  Use beginner_tutorials-srv:multiply instead.")
  (multiply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multiply-response>) ostream)
  "Serializes a message object of type '<multiply-response>"
  (cl:let* ((signed (cl:slot-value msg 'multiply)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multiply-response>) istream)
  "Deserializes a message object of type '<multiply-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multiply) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multiply-response>)))
  "Returns string type for a service object of type '<multiply-response>"
  "beginner_tutorials/multiplyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiply-response)))
  "Returns string type for a service object of type 'multiply-response"
  "beginner_tutorials/multiplyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multiply-response>)))
  "Returns md5sum for a message object of type '<multiply-response>"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multiply-response)))
  "Returns md5sum for a message object of type 'multiply-response"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multiply-response>)))
  "Returns full string definition for message of type '<multiply-response>"
  (cl:format cl:nil "int64 multiply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multiply-response)))
  "Returns full string definition for message of type 'multiply-response"
  (cl:format cl:nil "int64 multiply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multiply-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multiply-response>))
  "Converts a ROS message object to a list"
  (cl:list 'multiply-response
    (cl:cons ':multiply (multiply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'multiply)))
  'multiply-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'multiply)))
  'multiply-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiply)))
  "Returns string type for a service object of type '<multiply>"
  "beginner_tutorials/multiply")