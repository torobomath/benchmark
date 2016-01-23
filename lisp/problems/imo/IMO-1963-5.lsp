;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1963, Problem 5
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Prove that $\cos\frac{\pi}{7} - \cos\frac{2\pi}{7} + \cos\frac{3\pi}{7} = \frac{1}{2}$.
;; </PROBLEM-TEXT>

(def-directive p
  (Show
   (= (+ (- (cos (/ (Pi) 7)) (cos (/ (* 2 (Pi)) 7))) (cos (/ (* 3 (Pi)) 7))) (/ 1 2))
   )
)

