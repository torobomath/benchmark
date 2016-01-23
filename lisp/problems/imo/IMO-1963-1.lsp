;; DOMAIN:    Algebra, basics of equation/inequality
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1963, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Find all real roots of the equation\[
;; \sqrt{x^2 - p} + 2 \sqrt{x^2 - 1} = x,
;; \]where $p$ is a real parameter.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x)
  (= (+ (sqrt (- (^ x 2) p)) (* 2 (sqrt (- (^ x 2) 1)))) x)))

(def-answer p
   (PLam x (&& (<= p (/ 4 3))
               (<= 0 p)
               (= x (/ (- 4 p) (sqrt (* 8 (- 2 p))))))))

