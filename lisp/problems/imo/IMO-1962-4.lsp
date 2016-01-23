;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 4
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Solve the equation $\cos^2 x + \cos^2 2x + \cos^2 3x = 1$.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x)
  (= (+ (^ (cos x) 2) (^ (cos (* 2 x)) 2) (^ (cos (* 3 x)) 2)) 1)))

(def-answer p (PLam x (exists (n)
                        (&& (int.is-integer n)
                            (|| (= x (* (+ (* 2 (int->real n)) (/ 1 2)) (Pi)))
                                (= x (* (+ (* 2 (int->real n)) (/ 3 2)) (Pi)))
                                (= x (* (+ (* 2 (int->real n)) (/ 1 4)) (Pi)))
                                (= x (* (+ (* 2 (int->real n)) (/ 3 4)) (Pi))))))))

