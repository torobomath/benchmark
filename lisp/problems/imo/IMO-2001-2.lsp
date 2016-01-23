;; DOMAIN:    Algebra, inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2001, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; Prove that
;; a/sqrt(a^2 + 8bc) + b/sqrt(b^2 + 8ca) + c/sqrt(c^2 + 8ab) >= 1
;; for all positive real numbers a, b and c.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (forall (a b c)
                (-> (&& (> a 0)
                        (> b 0)
                        (> c 0))
                    (>= (+ (/ a (sqrt (+ (^ a 2) (* 8 b c))))
                           (/ b (sqrt (+ (^ b 2) (* 8 c a))))
                           (/ c (sqrt (+ (^ c 2) (* 8 a b)))))
                        1)))))

