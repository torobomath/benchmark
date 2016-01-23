;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2002, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-04
;;
;; <PROBLEM-TEXT>
;; BC is a diameter of a circle center O. A is any point on
;; the circle with angle(AOC) > 60 Degree. EF is the chord which is
;; the perpendicular bisector of AO. D is the midpoint of the minor arc AB.
;; The line through O parallel to AD meets AC at J.
;; Show that J is the incenter of triangle CEF.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (O Ga B C A D J E F)
     (-> (&& (circle-type Ga)
               (= (center-of Ga) O)
               (is-diameter-of (seg B C) Ga)
               (on A Ga)
               (< (* 60 (Degree)) (rad-of-angle (angle A O C)))
               (is-perp-bisector (line E F) (seg O A))
               (on E Ga)
               (on F Ga)
               (on D Ga)
               (intersect (seg A B) (seg O D))
               (is-angle-bisector (line O D) (angle A O B))
               (parallel (line O J) (line A D))
               (on J (line A C)))
           (is-incenter-of J (triangle C E F))))))

