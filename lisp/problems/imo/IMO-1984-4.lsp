;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1984, Problem 4
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; Let $ABCD$ be a convex quadrilateral such that the line $CD$ is a tangent to the
;; circle on $AB$ as diameter. Prove that the line $AB$ is a tangent to the circle on
;; $CD$ as diameter if and only if the lines $BC$ and $AD$ are parallel.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D K)
     (-> (&& (is-square A B C D)
               (circle-type K)
               (is-diameter-of (seg A B) K)
               (tangent (line C D) K))
         (<-> (exists (K2)
                   (&& (circle-type K2)
                       (is-diameter-of (seg C D) K2)
                       (tangent (line A B) K2)))
                (parallel (line B C) (line A D)))))))

