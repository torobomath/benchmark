;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1963, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Find all solutions $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ of the system
;; \[   x_5 + x_2 = y x_1   \]
;; \[   x_1 + x_3 = y x_2   \]
;; \[   x_2 + x_4 = y x_3   \]
;; \[   x_3 + x_5 = y x_4   \]
;; \[   x_4 + x_1 = y x_5,  \]
;; where $y$ is a parameter.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (x1x2x3x4x5)
  (exists (x1 x2 x3 x4 x5)
    (&& (= x1x2x3x4x5 (list-of x1 x2 x3 x4 x5))
        (= (+ x2 x5) (* y x1))
        (= (+ x1 x3) (* y x2))
        (= (+ x2 x4) (* y x3))
        (= (+ x3 x5) (* y x4))
        (= (+ x4 x1) (* y x5))
     )
   )
   )
)

(def-answer p
  (PLam x1x2x3x4x5
    (|| (&& (= (- (+ (^ y 2) y) 1) 0)
            (exists (s t)
               (= x1x2x3x4x5 (list-of s
                                      t
                                      (+ (- s) (* y t))
                                      (- (+ (* (- (^ y 2) 1) s) (* y t)))
                                      (- (* y s) t)))))
        (&& (= y 2)
            (exists (s) (= x1x2x3x4x5 (list-of s s s s s))))
    (= x1x2x3x4x5 (list-of 0 0 0 0 0))
    )))

