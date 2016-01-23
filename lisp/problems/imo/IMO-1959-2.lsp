;; DOMAIN:    Algebra, basics of equation/inequality
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 2
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-09
;;
;; <PROBLEM-TEXT>
;; For what real values of $x$ is\[
;; \sqrt{x + \sqrt{2x - 1}} + \sqrt{x - \sqrt{2x - 1}} = A,
;; \]given (a) $A = \sqrt{2}$, (b) $A = 1$, (c) $A = 2$, where only non-negative real
;; numbers are admitted for square roots?
;; </PROBLEM-TEXT>

(def-directive p1
  (Find (x) (&&
  (<= 0 x)
  (= (+ (sqrt (+ x (sqrt (- (* 2 x) 1)))) (sqrt (- x (sqrt (- (* 2 x) 1))))) (sqrt 2))
   ))
)

(def-directive p2
  (Find (x) (&&
  (<= 0 x)
  (= (+ (sqrt (+ x (sqrt (- (* 2 x) 1)))) (sqrt (- x (sqrt (- (* 2 x) 1))))) 1)
   ))
)

(def-directive p3
  (Find (x) (&&
  (<= 0 x)
  (= (+ (sqrt (+ x (sqrt (- (* 2 x) 1)))) (sqrt (- x (sqrt (- (* 2 x) 1))))) 2)
   ))
)

(def-answer p1 (PLam x (&& (<= (/ 1 2) x) (<= x 1))))

(def-answer p2 (PLam x (= 0 1)))

(def-answer p3 (PLam x (= x (/ 3 2))))

