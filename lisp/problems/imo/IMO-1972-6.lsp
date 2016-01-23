;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1972, Problem 6
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-27
;;
;; <PROBLEM-TEXT>
;; Given four distinct parallel planes, prove that there exists a regular
;; tetrahedron with a vertex on each plane.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Show
   (forall (PL1 PL2 PL3 PL4)
     (-> (&& (plane-type PL1)
               (plane-type PL2)
               (plane-type PL3)
               (plane-type PL4)
               (parallel PL1 PL2)
               (parallel PL2 PL3)
               (parallel PL3 PL4)
               (pairwise-distinct (list-of PL1 PL2 PL3 PL4)))
           (exists (P1 P2 P3 P4)
              (&& (on P1 PL1)
                  (on P2 PL2)
                  (on P3 PL3)
                  (on P4 PL4)
                  (is-regular-tetrahedron P1 P2 P3 P4)))))))

