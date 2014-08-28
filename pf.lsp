(defpackage :pathfinder
  (:nicknames pf)
  (:import-from cl car cdr defparameter defstruct defun defvar
                floor in-package list load nil t
                + /)
  (:export classes skills class-name class-hitdie class-bab class-fort
           class-ref class-will class-skillpoints class-skills))

(in-package :pf)

(load "char.lsp")
(load "class.lsp")
(load "skill.lsp")

