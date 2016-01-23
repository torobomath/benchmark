;; DOMAIN:    Geometry, tetrahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1967, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Prove that if one and only one edge of a tetrahedron is greater than $1$,
;; then its volume is $\leq \frac{1}{8}$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Show
    (forall (A B C D)
       (-> (&& (is-tetrahedron A B C D)
               (exists (Sides)
                       (&& (= Sides (list-of (seg A B)
                                             (seg A C)
                                             (seg A D)
                                             (seg B C)
                                             (seg B D)
                                             (seg C D)))
                           (some (PLam s (&& (> (length-of s) 1)
                                             (all (PLam t (|| (= s t)
                                                              (<= (length-of t) 1)))
                                                  Sides)))
                                 Sides))))
           (>= (volume-of (tetrahedron A B C D)) (/ 1 8))))))

