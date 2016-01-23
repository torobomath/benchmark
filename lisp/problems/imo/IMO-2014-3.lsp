;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2014, Problem 3
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-10
;;
;; <PROBLEM-TEXT>
;; Convex quadrilateral $ABCD$ has $\angle ABC = \angle CDA = 90\degree$.
;; Point $H$ is the foot of the perpendicular from $A$ to $BD$.
;; Points $S$ and $T$ lie on sides $AB$ and $AD$, respectively, such that $H$
;; lies inside triangle $SCT$ and\[
;; \angle CHS - \angle CSB = 90\degree,
;; \angle THC - \angle DTC = 90\degree.
;; \]Prove that line $BD$ is tangent to the circumcircle of triangle $TSH$.
;;
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
   (Show
     (forall (A B C D H S T)
             (-> (&& (is-square A B C D)
                     (= (rad-of-angle (angle A B C)) (* 90 (Degree)))
                     (= (rad-of-angle (angle C D A)) (* 90 (Degree)))
                     (= H (foot-of-perpendicular-line-from-to A (line B D)))
                     (on S (seg A B))
                     (on T (seg A D))
                     (on H (triangle S C T))
                     (= (- (rad-of-angle (angle C H S))
                           (rad-of-angle (angle C S B)))
                        (* 90 (Degree)))
                     (= (- (rad-of-angle (angle T H C))
                           (rad-of-angle (angle D T C)))
                        (* 90 (Degree))))
                 (exists (K)
                         (&& (circle-type K)
                             (is-inscribed-in (triangle T S H) K)
                             (tangent (line B D) K)))))))

