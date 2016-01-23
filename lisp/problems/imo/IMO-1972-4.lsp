;; DOMAIN:    Algebra, basics of equation/inequality
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1972, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-27
;;
;; <PROBLEM-TEXT>
;; Find all solutions $(x_1, x_2, x_3, x_4, x_5)$ of the system of inequalities
;; \[  (x_1^2 - x_3 x_5)(x_2^2 - x_3 x_5) \leq 0  \]
;; \[  (x_2^2 - x_4 x_1)(x_3^2 - x_4 x_1) \leq 0  \]
;; \[  (x_3^2 - x_5 x_2)(x_4^2 - x_5 x_2) \leq 0  \]
;; \[  (x_4^2 - x_1 x_3)(x_5^2 - x_1 x_3) \leq 0  \]
;; \[  (x_5^2 - x_2 x_4)(x_1^2 - x_2 x_4) \leq 0  \]
;; where $x_1$, $x_2$, $x_3$, $x_4$, $x_5$ are positive real numbers.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (XL)
  (exists (X1 X2 X3 X4 X5)
    (&& (<= (* (- (^ X1 2) (* X3 X5)) (- (^ X2 2) (* X3 X5))) 0)
        (<= (* (- (^ X2 2) (* X1 X4)) (- (^ X3 2) (* X4 X1))) 0)
        (<= (* (- (^ X3 2) (* X2 X5)) (- (^ X4 2) (* X2 X5))) 0)
        (<= (* (- (^ X4 2) (* X1 X3)) (- (^ X5 2) (* X1 X3))) 0)
        (<= (* (- (^ X5 2) (* X2 X4)) (- (^ X1 2) (* X2 X4))) 0)
      (< 0 X1)
      (< 0 X2)
      (< 0 X3)
      (< 0 X4)
      (< 0 X5)
        (= XL (list-of X1 X2 X3 X4 X5))))))

(def-answer p (PLam XL (exists (X1 X2 X3 X4 X5)
                          (&& (= XL (list-of X1 X2 X3 X4 X5))
                              (= X1 X2)
                              (= X2 X3)
                              (= X3 X4)
                              (= X4 X5)))))

