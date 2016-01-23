;; DOMAIN:    Algebra, basics of equation/inequality
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 2
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Determine all real numbers $x$ which satisfy the inequality:\[
;; \sqrt{3 - x} - \sqrt{x + 1} > \frac{1}{2}.
;; \]
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x)
  (> (- (sqrt (- 3 x)) (sqrt (+ x 1))) (/ 1 2))))

(def-answer p
  (PLam x (&& (<= -1 x)
              (< x (- 1 (/ (sqrt 31) 8))))))

