; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Multiply-request.msg.html

(cl:defclass <Multiply-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Multiply-request (<Multiply-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Multiply-request> is deprecated: use beginner_tutorials-srv:Multiply-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:a-val is deprecated.  Use beginner_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Multiply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:b-val is deprecated.  Use beginner_tutorials-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-request>) ostream)
  "Serializes a message object of type '<Multiply-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-request>) istream)
  "Deserializes a message object of type '<Multiply-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-request>)))
  "Returns string type for a service object of type '<Multiply-request>"
  "beginner_tutorials/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-request)))
  "Returns string type for a service object of type 'Multiply-request"
  "beginner_tutorials/MultiplyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-request>)))
  "Returns md5sum for a message object of type '<Multiply-request>"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-request)))
  "Returns md5sum for a message object of type 'Multiply-request"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-request>)))
  "Returns full string definition for message of type '<Multiply-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-request)))
  "Returns full string definition for message of type 'Multiply-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Multiply-response.msg.html

(cl:defclass <Multiply-response> (roslisp-msg-protocol:ros-message)
  ((multiply
    :reader multiply
    :initarg :multiply
    :type cl:integer
    :initform 0))
)

(cl:defclass Multiply-response (<Multiply-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Multiply-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Multiply-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Multiply-response> is deprecated: use beginner_tutorials-srv:Multiply-response instead.")))

(cl:ensure-generic-function 'multiply-val :lambda-list '(m))
(cl:defmethod multiply-val ((m <Multiply-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:multiply-val is deprecated.  Use beginner_tutorials-srv:multiply instead.")
  (multiply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Multiply-response>) ostream)
  "Serializes a message object of type '<Multiply-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Multiply-response>) istream)
  "Deserializes a message object of type '<Multiply-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Multiply-response>)))
  "Returns string type for a service object of type '<Multiply-response>"
  "beginner_tutorials/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply-response)))
  "Returns string type for a service object of type 'Multiply-response"
  "beginner_tutorials/MultiplyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Multiply-response>)))
  "Returns md5sum for a message object of type '<Multiply-response>"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Multiply-response)))
  "Returns md5sum for a message object of type 'Multiply-response"
  "51d0ada50d2055f1c9c8992c5c64d6e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Multiply-response>)))
  "Returns full string definition for message of type '<Multiply-response>"
  (cl:format cl:nil "int64 multiply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Multiply-response)))
  "Returns full string definition for message of type 'Multiply-response"
  (cl:format cl:nil "int64 multiply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Multiply-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Multiply-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Multiply-response
    (cl:cons ':multiply (multiply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Multiply)))
  'Multiply-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Multiply)))
  'Multiply-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Multiply)))
  "Returns string type for a service object of type '<Multiply>"
  "beginner_tutorials/Multiply")