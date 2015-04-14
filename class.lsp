
(in-package :pf)

(defstruct class
  name hitdie bab fort ref will skillpoints skills)

(defun def-class (name hitdie bab fort ref will skillpoints skills)
  (make-class :name name
              :hitdie hitdie
              :bab bab
              :fort fort
              :ref ref
              :will will
              :skillpoints skillpoints
              :skills skills))

(defun good (lvl)
  (floor (+ 2 (/ lvl 2))))

(defun bad (lvl)
  (floor (/ lvl 3)))

(defvar classes (list
  ;(class hit-die bab fort-save reflex-save will-save skill-points skills)
  (def-class :alchemist 8 3/4 #'good #'good #'bad 4
    '(:appraise :craft :disable-device :fly :heal :knowledge[arcana]
      :knowledge[nature] :perception :profession :sleight-of-hand :spellcraft
      :survival :use-magic-device))
  (def-class :barbarian 12 1 #'good #'bad #'bad 4
    '(:acrobatics :climb :craft :handle-animal :intimidate :knowledge[nature]
      :perception :ride :survival :swim))
  (def-class :bard 8 3/4 #'bad #'good #'good 6
    '(:acrobatics :appraise :bluff :climb :craft :diplomacy :disguise
      :escape-artist :intimidate :knowledge :linguistics :perception
      :sense-motive :sleight-of-hand :spellcraft :stealth :use-magic-device))
  (def-class :cavalier 10 1 #'good #'bad #'bad 4
    '(:bluff :climb :craft :diplomacy :handle-animal :intimdate :profession
      :ride :sense-motive :swim))
  (def-class :cleric 8 3/4 #'good #'bad #'good 2
    '(:appraise :craft :diplomacy :heal :knowledge[arcana] 
      :knowledge[nobility] :knowledge[planes] :knowledge[religion]
      :linguistics :profession :sense-motive :spellcraft))
  (def-class :druid 8 3/4 #'good #'bad #'good 4
    '(:climb :craft :fly :handle-animal :heal :knowledge[geography]
      :knowledge[nature] :perception :profession :ride :spellcraft :survival
      :swim))
  (def-class :fighter 10 1 #'good #'bad #'bad 2
    '(:climb :craft :handle-animal :intimidate :knowledge[dungeoneering]
      :knowledge[engineering] :profession :ride :survival :swim))
  (def-class :gunslinger 10 1 #'good #'good #'bad 4
    '(:acrobatics :bluff :climb :craft :handle-animal :heal :intimdate
      :knowledge[engineering] :knowledge[local] :perception :profession
      :ride :sleight-of-hand
      :survival :swim))
  (def-class :inquisitor 10 1 #'good #'good #'bad 4
    '(:bluff :climb :craft :diplomacy :disguise :heal :intimidate
      :knowledge[arcana] :knowledge[dungeoneering] :knowledge[nature]
      :knowledge[planes] :knowledge[religion] :perception :profession
      :ride :sense-motive :spellcraft :stealth :survival :swim))
  (def-class :magus 8 3/4 #'good #'bad #'good 2
    '(:climb :craft :fly :intimidate :knowledge[arcana]
      :knowledge[dungeoneering] :knoeldge[planes] :profession :ride
      :spellcraft :swim :use-magic-device))
  (def-class :monk 8 3/4 #'good #'good #'good 4
    '(:acrobatics :climb :craft :escape-artist :intimidate :knoeldge[history]
      :knowledge[religion] :perception :perform :profession :ride
      :sense-motive :stealth :swim))
  (def-class :oracle 8 3/4 #'bad #'bad #'good 4
    '(:craft :diplomacy :heal :knowledge[history] :knowledge[planes]
      :knowledge[religion] :profession :sense-motive :spellcraft))
  (def-class :paladin 10 1 #'good #'bad #'good 2
    '(:craft :diplomacy :handle-animal :heal :knowledge[nobility]
      :knowledge[religion] :profession :ride :sense-motive :spellcraft))
  (def-class :ranger 10 1 #'good #'good #'bad 6
    '(:climb :craft :handle-animal :heal :intimidate :knowledge[dungeoneering]
      :knowledge[geography] :knowledge[nature] :perception :profession
      :ride :spellcraft :stealth :survival :swim))
  (def-class :rogue 8 3/4 #'bad #'good #'bad 8
    '(:acrobatics :appraise :bluff :climb :craft :diplomacy :disable-device
      :disguise :escape-artist :intimidate :knowledge[dungeoneering]
      :knowledge[local] :linguistics :perception :perform :profession
      :sense-motive :sleight-of-hand :stealth :swim :use-magic-device))
  (def-class :sorceror 6 1/2 #'bad #'bad #'good 2
    '(:appraise :bluff :craft :fly :intimidate :knowledge[arcana]
      :profession :spellcraft :use-magic-device))
  (def-class :summoner 8 3/4 #'bad #'bad #'good 2
    '(:craft :fly :handle-animal :knowledge :linguistics :profession
      :ride :spellcraft :use-magic-device))
  (def-class :witch 6 1/2 #'bad #'bad #'good 2
    '(:craft :fly :heal :intimidate :knowledge[arcana] :knowledge[history]
      :knowledge[nature] :knowledge[planes] :profession :spellcraft
      :use-magic-device))
  (def-class :wizard 6 1/2 #'bad #'bad #'good 2
    '(:appraise :craft :fly :knowledge :linguistics :profession :spellcraft))))

