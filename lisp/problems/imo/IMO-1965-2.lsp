;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1965, Problem 2
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Consider the system of equations
;; \[   a_{11} x_1 + a_{12} x_2 + a_{13} x_3 = 0   \]
;; \[   a_{21} x_1 + a_{22} x_2 + a_{23} x_3 = 0   \]
;; \[   a_{31} x_1 + a_{32} x_2 + a_{33} x_3 = 0   \]
;; with unknowns $x_1$, $x_2$, $x_3$. The coeffcients satisfy the conditions:
;; (a) $a_{11}$, $a_{22}$, $a_{33}$ are positive numbers;
;; (b) the remaining coeffcients are negative numbers;
;; (c) in each equation, the sum of the coeffcients is positive.
;; Prove that the given system has only the solution $x_1 = x_2 = x_3 = 0$.
;; </PROBLEM-TEXT>

(def-directive p
  (Show
   (forall (a11 a12 a13 a21 a22 a23 a31 a32 a33 x1 x2 x3)
     (-> (&& (> a11 0)
               (> a22 0)
               (> a33 0)
               (< a12 0) (< a13 0)
               (< a21 0) (< a23 0)
               (< a31 0) (< a32 0)
               (> (+ a11 a12 a13) 0)
               (> (+ a21 a22 a23) 0)
               (> (+ a31 a32 a33) 0)
               (= (+ (* a11 x1) (* a12 x2) (* a13 x3)) 0)
               (= (+ (* a21 x1) (* a22 x2) (* a23 x3)) 0)
               (= (+ (* a31 x1) (* a32 x2) (* a33 x3)) 0))
         (&& (= x1 0)
               (= x2 0)
               (= x3 0))))))

