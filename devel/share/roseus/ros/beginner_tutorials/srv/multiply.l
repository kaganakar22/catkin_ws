;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::multiply)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'multiply (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::MULTIPLY")
  (make-package "BEGINNER_TUTORIALS::MULTIPLY"))
(unless (find-package "BEGINNER_TUTORIALS::MULTIPLYREQUEST")
  (make-package "BEGINNER_TUTORIALS::MULTIPLYREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::MULTIPLYRESPONSE")
  (make-package "BEGINNER_TUTORIALS::MULTIPLYRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::multiplyRequest
  :super ros::object
  :slots (_a _b ))

(defmethod beginner_tutorials::multiplyRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::multiplyResponse
  :super ros::object
  :slots (_multiply ))

(defmethod beginner_tutorials::multiplyResponse
  (:init
   (&key
    ((:multiply __multiply) 0)
    )
   (send-super :init)
   (setq _multiply (round __multiply))
   self)
  (:multiply
   (&optional __multiply)
   (if __multiply (setq _multiply __multiply)) _multiply)
  (:serialization-length
   ()
   (+
    ;; int64 _multiply
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _multiply
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _multiply (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _multiply) (= (length (_multiply . bv)) 2)) ;; bignum
              (write-long (ash (elt (_multiply . bv) 0) 0) s)
              (write-long (ash (elt (_multiply . bv) 1) -1) s))
             ((and (class _multiply) (= (length (_multiply . bv)) 1)) ;; big1
              (write-long (elt (_multiply . bv) 0) s)
              (write-long (if (>= _multiply 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _multiply s)(write-long (if (>= _multiply 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _multiply
#+(or :alpha :irix6 :x86_64)
      (setf _multiply (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _multiply (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::multiply
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::multiply :md5sum-) "51d0ada50d2055f1c9c8992c5c64d6e1")
(setf (get beginner_tutorials::multiply :datatype-) "beginner_tutorials/multiply")
(setf (get beginner_tutorials::multiply :request) beginner_tutorials::multiplyRequest)
(setf (get beginner_tutorials::multiply :response) beginner_tutorials::multiplyResponse)

(defmethod beginner_tutorials::multiplyRequest
  (:response () (instance beginner_tutorials::multiplyResponse :init)))

(setf (get beginner_tutorials::multiplyRequest :md5sum-) "51d0ada50d2055f1c9c8992c5c64d6e1")
(setf (get beginner_tutorials::multiplyRequest :datatype-) "beginner_tutorials/multiplyRequest")
(setf (get beginner_tutorials::multiplyRequest :definition-)
      "int64 a
int64 b
---
int64 multiply

")

(setf (get beginner_tutorials::multiplyResponse :md5sum-) "51d0ada50d2055f1c9c8992c5c64d6e1")
(setf (get beginner_tutorials::multiplyResponse :datatype-) "beginner_tutorials/multiplyResponse")
(setf (get beginner_tutorials::multiplyResponse :definition-)
      "int64 a
int64 b
---
int64 multiply

")



(provide :beginner_tutorials/multiply "51d0ada50d2055f1c9c8992c5c64d6e1")


