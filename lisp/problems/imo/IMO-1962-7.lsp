;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 7
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; The tetrahedron $SABC$ has the following property: there exist five spheres,
;; each tangent to the edges $SA$, $SB$, $SC$, $BC$, $CA$, $AB$, or to their extensions.
;; (a) Prove that the tetrahedron $SABC$ is regular.
;; (b) Prove conversely that for every regular tetrahedron five such spheres
;; exist.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Show
    (forall (S A B C)
            (<-> (is-regular-tetrahedron S A B C)
                 (&& (is-tetrahedron S A B C)
                     (exists (K1 K2 K3 K4 K5 Lines Circles)
                             (&& (circle-type K1)
                                 (circle-type K2)
                                 (circle-type K3)
                                 (circle-type K4)
                                 (circle-type K5)
                                 (!(= K1 K2)) (!(= K1 K3)) (!(= K1 K4)) (!(= K1 K5))
                                 (!(= K2 K3)) (!(= K2 K4)) (!(= K2 K5))
                                 (!(= K3 K4)) (!(= K3 K5))
                                 (!(= K5 K4))
                                 (= Circles (list-of K1 K2 K3 K4 K5))
                                 (= Lines (list-of (line S A)
                                                   (line S B)
                                                   (line S C)
                                                   (line A B)
                                                   (line B C)
                                                   (line C A)))
                                 (all (PLam K (all (PLam L (tangent K L)) Lines)) Circles))))))))

