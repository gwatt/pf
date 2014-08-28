
(in-package :pf)

(defstruct char
  name hitpoints (classes nil :type list) (extra-skills nil :type list))

(defparameter *char* nil)

(defun bab (&optional (char *char*))
  (apply #'+ (map 'cl:list (lambda (x)
                             (floor (* (class-bab (car x)) (cdr x))))
               (char-classes char))))

(defun fort-save (&optional (char *char*))
  (apply #'+ (map 'cl:list (lambda (x)
                             (floor (funcall (class-fort (car x)) (cdr x))))
               (char-classes char))))

(defun ref-save (&optional (char *char*))
  (apply #'+ (map 'cl:list (lambda (x)
                             (floor (funcall (class-ref (car x)) (cdr x))))
               (char-classes char))))

(defun will-save (&optional (char *char*))
  (apply #'+ (map 'cl:list (lambda (x)
                             (floor (funcall (class-will (car x)) (cdr x))))
               (char-classes char))))
