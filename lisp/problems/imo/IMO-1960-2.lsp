;; DOMAIN:    Algebra, basics of equation/inequality
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 2
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; For what values of the variable $x$ does the following inequality hold:\[
;; \frac{4x^2}{(1 - \sqrt{1 + 2x})^2} < 2x + 9?
;; \]
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x)
  (< (/ (* 4 (^ x 2)) (^ (- 1 (sqrt (+ 1 (* 2 x)))) 2)) (+ (* 2 x) 9))))

(def-answer p (PLam x (&& (! (= x 0)) (<= (- (/ 1 2)) x) (< x (/ 45 8)))))

