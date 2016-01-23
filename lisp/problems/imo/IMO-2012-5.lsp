;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2012, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-21
;;
;; <PROBLEM-TEXT>
;; Let ABC be a triangle with angle(BCA) = 90 Degree, and let D be the foot
;; of the altitude from C. Let X be a point in the interior of the segment CD.
;; Let K be the point on the segment AX such that BK = BC.
;; Similarly, let L be the point on the segment BX such that AL = AC.
;; Let M be the point of intersection of AL and BK.
;; Show that MK = ML.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D X K L M )
     (-> (&& (is-triangle A B C)
               (= (rad-of-angle (angle B C A)) (* 90 (Degree)))
               (= (foot-of-perpendicular-line-from-to C (line A B)) D)
               (on X (seg C D)) (! (= X C)) (! (= X D))
               (on K (seg A X))
               (= (length-of (seg B K)) (length-of (seg B C)))
               (on L (seg B X))
               (= (length-of (seg A L)) (length-of (seg A C)))
               (intersect (seg A L) (seg B K) M))
         (= (length-of (seg M L)) (length-of (seg M K)))))))

