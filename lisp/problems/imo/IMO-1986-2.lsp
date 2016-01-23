;; DOMAIN:    Geometry, transformational geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1986, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-18
;;
;; <PROBLEM-TEXT>
;; A triangle $A_1A_2A_3$ and a point $P_0$ are given in the plane. We define $A_s =
;; A_{s-3}$ for all $s ¥ge 4$. We construct a set of points $P_1, P_2, P_3, ¥ldots$,
;; such that $P_{k+1}$ is the image of $P_k$ under a rotation with center $A_{k+1}$
;; through angle $120^{¥circ}$ clockwise (for $k = 0, 1, 2, ¥ldots$). Prove that if
;; $P_{1986} = P_0$, then the triangle $A_1 A_2 A_3$ is equilateral.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A1 A2 A3 P0 P A)
     (-> (&& (is-triangle A1 A2 A3)
             (= (LamApp A 1) A1)
             (= (LamApp A 2) A2)
             (= (LamApp A 3) A3)
             (forall (s)
               (-> (int.>= s 4)
                   (= (LamApp A s) (LamApp A (int.- s 3)))))
             (= (LamApp P 0) P0)
             (forall (k)
               (-> (int.<= 0 k)
                   (&& (= (distance (LamApp A (int.+ k 1)) (LamApp P k))
                          (distance (LamApp A (int.+ k 1)) (LamApp P (int.+ k 1))))
                       (= (mv* (matrix (- (/ 1 2))    (- (/ (sqrt 3) 2))
                                       (/ (sqrt 3) 2) (- (/ 1 2)))
                               (vec (LamApp A (int.+ k 1)) (LamApp P k)))
                          (vec (LamApp A (int.+ k 1)) (LamApp P (int.+ k 1)))))))
             (= (LamApp P 1986) (LamApp P 0)))
         (is-equilateral-triangle A1 A2 A3)))))

