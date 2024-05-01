;; Auto-generated. Do not edit!


(when (boundp 'servo_control::ServoPosition)
  (if (not (find-package "SERVO_CONTROL"))
    (make-package "SERVO_CONTROL"))
  (shadow 'ServoPosition (find-package "SERVO_CONTROL")))
(unless (find-package "SERVO_CONTROL::SERVOPOSITION")
  (make-package "SERVO_CONTROL::SERVOPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ServoPosition.msg.html


(defclass servo_control::ServoPosition
  :super ros::object
  :slots (_position1 _position2 ))

(defmethod servo_control::ServoPosition
  (:init
   (&key
    ((:position1 __position1) 0.0)
    ((:position2 __position2) 0.0)
    )
   (send-super :init)
   (setq _position1 (float __position1))
   (setq _position2 (float __position2))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:serialization-length
   ()
   (+
    ;; float64 _position1
    8
    ;; float64 _position2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position1
       (sys::poke _position1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position2
       (sys::poke _position2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position1
     (setq _position1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position2
     (setq _position2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get servo_control::ServoPosition :md5sum-) "447f297a244af47c60883d47a59bd156")
(setf (get servo_control::ServoPosition :datatype-) "servo_control/ServoPosition")
(setf (get servo_control::ServoPosition :definition-)
      "float64 position1
float64 position2

")



(provide :servo_control/ServoPosition "447f297a244af47c60883d47a59bd156")


