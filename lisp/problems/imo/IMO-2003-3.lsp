;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2003, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; A convex hexagon has the property that for any pair of opposite
;; sides the distance between their midpoints is sqrt(3)/2 times
;; the sum of their lengths. Show that all the hexagon's angles are equal.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D E F)
                (-> (&& (is-convex-shape (polygon (list-of A B C D E F)))
                        (= (* (/ (sqrt 3) 2) (+ (distance A B) (distance D E)))
                           (distance (midpoint-of A B)
                                     (midpoint-of D E)))
                        (= (* (/ (sqrt 3) 2) (+ (distance B C) (distance E F)))
                           (distance (midpoint-of B C)
                                     (midpoint-of E F)))
                        (= (* (/ (sqrt 3) 2) (+ (distance C D) (distance F A)))
                           (distance (midpoint-of C D)
                                     (midpoint-of F A))))
                    (&& (= (rad-of-angle (angle A B C))
                           (rad-of-angle (angle B C D)))
                        (= (rad-of-angle (angle B C D))
                           (rad-of-angle (angle C D E)))
                        (= (rad-of-angle (angle C D E))
                           (rad-of-angle (angle D E F)))
                        (= (rad-of-angle (angle D E F))
                           (rad-of-angle (angle E F A)))
                        (= (rad-of-angle (angle E F A))
                           (rad-of-angle (angle F A B))))))))

