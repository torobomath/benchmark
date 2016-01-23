;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1985, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-17
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be real numbers that satisfy $a^2 + b^2\not= 0$, and
;; define
;;
;;
;; $A =\frac{1}{a^2+b^2}(\begin{matrix} a^2 & a b\\ a b & b^2\end{matrix})$
;; and $I =(\begin{matrix} 1 & 0\\ 0 & 1\end{matrix})$.
;;
;; Let $Q$ and $R$ be the image of $P(x, y)$ by the linear
;; transformations defined by the matrices $A^3$ and $(I-A)^2$,
;; respectively, where neither $Q$ nor $R$ matches $P$.
;;
;; (1) Find the magnitude of $\angle QPR$.
;;
;; (2) Represent the area of $\triangle PQR$ using $a$, $b$, $x$, and
;; $y$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (QPR)
        (exists (A I P Q R a b x y)
                (&& (! (= (+ (^ a 2) (^ b 2)) 0))
                    (= A (sm* (/ 1 (+ (^ a 2) (^ b 2)))
                              (matrix  (^ a 2) (* a b) (* a b) (^ b 2))))
                    (= I (identity-matrix))
                    (= P (point x y))
                    (= Q (vec->point (mv* (m^ A 3) (vec (origin) P))))
                    (= R (vec->point (mv* (m^ (m- I A) 2) (vec (origin) P))))
                    (! (= P Q))
                    (! (= P R))
                    (= QPR (rad-of-angle (angle Q P R)))))))

(def-directive
  p2
  (Find (S)
        (exists (A I P Q R)
                (&& (! (= (+ (^ a 2) (^ b 2)) 0))
                    (= A (sm* (/ 1 (+ (^ a 2) (^ b 2) 0))
                              (matrix  (^ a 2) (* a b) (* a b) (^ b 2))))
                    (= I (identity-matrix))
                    (= P (point x y))
                    (= (vec (origin) Q) (mv* (m^ A 3) (vec (origin) P)))
                    (= (vec (origin) R) (mv* (m^ (m- I A) 2) (vec (origin) P)))
                    (! (= P Q))
                    (! (= P R))
                    (= S (area-of (triangle P Q R)))))))

(def-answer p1 (PLam QPR (= QPR (/ (Pi) 2))))

(def-answer p2 (PLam S (exists (P Q R A I) (&&
  (= P (point x y))
  (= A (sm* (/ 1 (+ (^ a 2) (^ b 2)))
              (matrix  (^ a 2) (* a b) (* a b) (^ b 2))))
  (= I (identity-matrix))
  (= P (point x y))
  (= (vec (origin) Q) (mv* (m^ A 3) (vec (origin) P)))
  (= (vec (origin) R) (mv* (m^ (m- I A) 2) (vec (origin) P)))
  (! (= P Q))
  (! (= P R))
  (! (= 0 (+ (^ a 2) (^ b 2))))
  (= S (/ (abs (* (- (* b x) (* a y)) (+ (* a x) (* b y))))
      (* 2 (+ (^ a 2) (^ b 2)))))))))

