(defpackage :pathfinder
  (:nicknames pf)
  (:import-from cl apply car cdr defparameter defstruct defun defvar
                funcall floor in-package lambda list load map nil t
                &optional
                * + /)
  (:export classes skills class-name class-hitdie class-bab class-fort
           class-ref class-will class-skillpoints class-skills))

(in-package :pf)

(load "class.lsp")
(load "skill.lsp")
(load "char.lsp")
