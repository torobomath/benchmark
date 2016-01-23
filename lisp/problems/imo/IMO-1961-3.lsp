;; DOMAIN:    Geometry, trigonometric functions
;; THEORY:    PA+trans
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-29
;;
;; <PROBLEM-TEXT>
;; Solve the equation $\cos^n x - \sin^n x = 1$, where $n$ is a natural number.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (x)
        (&& (= (- (^ (cos x) (int->real n)) (^ (sin x) (int->real n)))
               1)
            (>= (int->real n) 1))))

(def-answer p (PLam x (|| (&& (int.is-odd-number n)
                           (exists (m)
                                      (|| (= x (* 2 (int->real m) (Pi)))
                                          (= x (+ (* 2 (int->real m) (Pi))
                                                  (/ (* 3 (Pi)) 2))))))
                          (&& (int.is-even-number n)
                              (exists (m)
                                      (= x (* (int->real m) (Pi))))))))

