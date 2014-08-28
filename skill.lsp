
(in-package :pf)

(defstruct skill
  name untrained armor-check ability)

(defun def-skill (name untrained armor-check ability)
  (make-skill :name name
              :untrained untrained
              :armor-check armor-check
              :ability ability))

(defvar skills (list
  ;(skill untrained? armor-check? ability)
  (def-skill :acrobatics t t :dex)
  (def-skill :appraise t nil :int)
  (def-skill :bluff t nil :cha)
  (def-skill :climb t t :str)
  (def-skill :craft t nil :int)
  (def-skill :diplomacy t nil :cha)
  (def-skill :disable-device nil t :dex)
  (def-skill :disguise t nil :cha)
  (def-skill :escape-artist t t :dex)
  (def-skill :fly t t :dex)
  (def-skill :handle-animal nil nil :cha)
  (def-skill :heal t nil :wis)
  (def-skill :intimidate t nil :cha)
  (def-skill :knowledge nil nil :int)
  (def-skill :linguistics nil nil :int)
  (def-skill :perception t nil :wis)
  (def-skill :perform t nil :cha)
  (def-skill :profession nil nil :wis)
  (def-skill :ride t t :dex)
  (def-skill :sense-motive t nil :wis)
  (def-skill :sleight-of-hand nil t :dex)
  (def-skill :spellcraft nil nil :int)
  (def-skill :stealth t t :dex)
  (def-skill :survival t nil :wis)
  (def-skill :swim t t :str)
  (def-skill :use-magic-device nil nil :cha)))

