
(in-package :pf)

(defstruct char
  name (classes nil :type list) (extra-skills nil :type list))

(defparameter *char* nil)