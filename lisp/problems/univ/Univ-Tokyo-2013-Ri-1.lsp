;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2013-11-21
;;
;; <PROBLEM-TEXT>
;; For the real numbers $a$ and $b$, define the point $P_n(x_n, y_n)$ on
;; a plane as $(x_0, y_0)=(1, 0)$
;; $(x_{n+1}, y_{n+1})=(a x_n-b y_n, b x_n+a y_n)(n = 0, 1, 2, \cdots)$.
;; Find all $(a, b)$ such that the following conditions (i) and (ii) are
;; both true. (i) $P_0=P_6$(ii) $P_0$, where $P_1$, $P_2$, $P_3$, $P_4$,
;; and $P_5$ are different from one another.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (ab)
  (exists (a b)
    (&&
    (= ab (list-of a b))
    (exists (P0 P1 P2 P3 P4 P5 P6 f)
      (&&
      (= f (Lam p (point (- (* a (x-coord p)) (* b (y-coord p)))
                 (+ (* b (x-coord p)) (* a (y-coord p))))))
      (= P0 (point 1 0))
      (= P1 (LamApp f P0))
      (= P2 (LamApp f P1))
      (= P3 (LamApp f P2))
      (= P4 (LamApp f P3))
      (= P5 (LamApp f P4))
      (= P6 (LamApp f P5))
        (= P0 P6)
      (pairwise-distinct (list-of P0 P1 P2 P3 P4 P5))))))))

(def-answer p (PLam ab (|| (= ab (list-of (/ 1 2) (/ (sqrt 3) 2)))
                            (= ab (list-of (/ 1 2) (- (/ (sqrt 3) 2)))))))

