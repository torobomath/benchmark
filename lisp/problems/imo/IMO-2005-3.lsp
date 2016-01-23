;; DOMAIN:    Algebra, inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2005, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; Let x, y, z be three positive reals such that xyz >= 1. Prove that
;; (x^5 - x^2)/(x^5 + y^2 + z^2) + (y^5 - y^2)/(x^2 + y^5 + z^2)
;; + (z^5 - z^2)/(x^2 + y^2 + z^5) >= 0.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (forall (x y z)
                (-> (&& (> x 0)
                        (> y 0)
                        (> z 0)
                        (>= (* x y z) 1))
                    (>= (+ (/ (- (^ x 5) (^ x 2))
                              (+ (^ x 5) (^ y 2) (^ z 2)))
                           (/ (- (^ y 5) (^ y 2))
                              (+ (^ x 2) (^ y 5) (^ z 2)))
                           (/ (- (^ z 5) (^ z 2))
                              (+ (^ x 2) (^ y 2) (^ z 5))))
                        0)))))

