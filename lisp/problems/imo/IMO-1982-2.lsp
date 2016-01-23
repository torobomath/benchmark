;; DOMAIN:    Geometry, transformational geometry
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1982, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; A non-isosceles triangle $A_1A_2A_3$ is given with sides $a_1$, $a_2$, $a_3$
;; ($a_i$ is the side opposite $A_i$). For all $i = 1, 2, 3$, $M_i$ is the midpoint
;; of side $a_i$, and $T_i$ is the point where the incircle touches side $a_i$.
;; Denote by $S_i$ the reflection of $T_i$ in the interior bisector of angle $A_i$.
;; Prove that the lines $M_1S_1$, $M_2S_2$, and $M_3S_3$ are concurrent.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A1 A2 A3 a1 a2 a3 M1 M2 M3 K T1 T2 T3 L1 L2 L3 S1 S2 S3)
     (-> (&& (! (is-isosceles-triangle A1 A2 A3))
               (= (length-of (seg A2 A3)) a1)
               (= (length-of (seg A1 A3)) a2)
               (= (length-of (seg A2 A1)) a3)
               (= M1 (midpoint-of A2 A3))
               (= M2 (midpoint-of A1 A3))
               (= M3 (midpoint-of A2 A1))
               (circle-type K)
               (is-inscribed-in K (triangle A1 A2 A3))
               (tangent (line A1 A2) K T3)
               (tangent (line A1 A3) K T2)
               (tangent (line A3 A2) K T1)
               (line-type L1)
               (line-type L2)
               (line-type L3)
               (is-angle-bisector L1 (angle A2 A1 A3))
               (is-angle-bisector L2 (angle A1 A2 A3))
               (is-angle-bisector L3 (angle A2 A3 A1))
               (line-symmetry S1 T1 L1)
               (line-symmetry S2 T2 L2)
               (line-symmetry S3 T3 L3))
         (exists (X)
               (&& (intersect (line M1 S1) (line M2 S2) X)
                   (intersect (line M2 S2) (line M3 S3) X)))))))

