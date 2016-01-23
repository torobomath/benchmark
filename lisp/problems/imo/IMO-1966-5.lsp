;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1966, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Solve the system of equations
;; \[                    |a_1 - a_2| x_2 + |a_1 - a_3| x_3 + |a_1 - a_4| x_4 = 1  \]
;; \[  |a_2 - a_1| x_1                   + |a_2 - a_3| x_3 + |a_2 - a_4| x_4 = 1  \]
;; \[  |a_3 - a_1| x_1 + |a_3 - a_2| x_2                   + |a_3 - a_4| x_4 = 1  \]
;; \[  |a_4 - a_1| x_1 + |a_4 - a_2| x_2 + |a_4 - a_3| x_3                   = 1  \]
;; where $a_1$, $a_2$, $a_3$, $a_4$ are four different real numbers.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (xs)
  (exists (X1 X2 X3 X4)
    (&& (= xs (list-of X1 X2 X3 X4))
        (= (+ (* (abs (- A1 A2)) X2) (* (abs (- A1 A3)) X3) (* (abs (- A1 A4)) X4)) 1)
        (= (+ (* (abs (- A2 A1)) X1) (* (abs (- A2 A3)) X3) (* (abs (- A2 A4)) X4)) 1)
        (= (+ (* (abs (- A3 A2)) X2) (* (abs (- A3 A1)) X1) (* (abs (- A3 A4)) X4)) 1)
        (= (+ (* (abs (- A4 A2)) X2) (* (abs (- A4 A3)) X3) (* (abs (- A4 A1)) X1)) 1)
      (! (= A1 A2))
      (! (= A1 A3))
      (! (= A1 A4))
      (! (= A2 A3))
      (! (= A2 A4))
      (! (= A3 A4))
        )
    )
  )
  )

(def-answer p (PLam xs (= xs (list-of (/ 1 (- A1 A4))
                                      0
                                      0
                                      (/ 1 (- A1 A4))))))

