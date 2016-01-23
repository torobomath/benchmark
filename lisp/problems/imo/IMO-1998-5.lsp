;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1998, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-05
;;
;; <PROBLEM-TEXT>
;; Let I be the incenter of triangle $ABC$. Let the incircle of $ABC$ touch the sides
;; $BC$, $CA$, and $AB$ at $K$, $L$, and $M$ , respectively. The line through $B$
;; parallel to $MK$ meets the lines $LM$ and $LK$ at $R$ and $S$, respectively. Prove
;; that angle $RIS$ is acute.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C I K1 K L M t R S)
     (-> (&& (is-triangle A B C)
               (is-incenter-of I (triangle A B C))
               (circle-type K1)
               (is-inscribed-in K1 (triangle A B C))
               (tangent K1 (seg B C) K)
               (tangent K1 (seg A C) L)
               (tangent K1 (seg A B) M)
               (line-type t)
               (parallel (line M K) t)
               (on B t)
               (intersect (line L M) t R)
               (intersect (line L K) t S))
         (is-acute (angle R I S))))))

