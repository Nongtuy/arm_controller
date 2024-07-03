;; Auto-generated. Do not edit!


(when (boundp 'custom_message::angles)
  (if (not (find-package "CUSTOM_MESSAGE"))
    (make-package "CUSTOM_MESSAGE"))
  (shadow 'angles (find-package "CUSTOM_MESSAGE")))
(unless (find-package "CUSTOM_MESSAGE::ANGLES")
  (make-package "CUSTOM_MESSAGE::ANGLES"))

(in-package "ROS")
;;//! \htmlinclude angles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass custom_message::angles
  :super ros::object
  :slots (_theta1 _theta2 _theta3 ))

(defmethod custom_message::angles
  (:init
   (&key
    ((:theta1 __theta1) (instance std_msgs::Float64 :init))
    ((:theta2 __theta2) (instance std_msgs::Float64 :init))
    ((:theta3 __theta3) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _theta1 __theta1)
   (setq _theta2 __theta2)
   (setq _theta3 __theta3)
   self)
  (:theta1
   (&rest __theta1)
   (if (keywordp (car __theta1))
       (send* _theta1 __theta1)
     (progn
       (if __theta1 (setq _theta1 (car __theta1)))
       _theta1)))
  (:theta2
   (&rest __theta2)
   (if (keywordp (car __theta2))
       (send* _theta2 __theta2)
     (progn
       (if __theta2 (setq _theta2 (car __theta2)))
       _theta2)))
  (:theta3
   (&rest __theta3)
   (if (keywordp (car __theta3))
       (send* _theta3 __theta3)
     (progn
       (if __theta3 (setq _theta3 (car __theta3)))
       _theta3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _theta1
    (send _theta1 :serialization-length)
    ;; std_msgs/Float64 _theta2
    (send _theta2 :serialization-length)
    ;; std_msgs/Float64 _theta3
    (send _theta3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _theta1
       (send _theta1 :serialize s)
     ;; std_msgs/Float64 _theta2
       (send _theta2 :serialize s)
     ;; std_msgs/Float64 _theta3
       (send _theta3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _theta1
     (send _theta1 :deserialize buf ptr-) (incf ptr- (send _theta1 :serialization-length))
   ;; std_msgs/Float64 _theta2
     (send _theta2 :deserialize buf ptr-) (incf ptr- (send _theta2 :serialization-length))
   ;; std_msgs/Float64 _theta3
     (send _theta3 :deserialize buf ptr-) (incf ptr- (send _theta3 :serialization-length))
   ;;
   self)
  )

(setf (get custom_message::angles :md5sum-) "354d100d75e8581dc7dd85b447e1a363")
(setf (get custom_message::angles :datatype-) "custom_message/angles")
(setf (get custom_message::angles :definition-)
      "std_msgs/Float64 theta1
std_msgs/Float64 theta2
std_msgs/Float64 theta3

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :custom_message/angles "354d100d75e8581dc7dd85b447e1a363")


