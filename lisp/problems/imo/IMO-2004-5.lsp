;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2004, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; In a convex quadrilateral ABCD the diagonal BD does not
;; bisect the angles ABC and CDA. The point P lies inside ABCD and
;; satisfies
;; angle(PBC) = angle(DBA) and angle(PDC) = angle(BDA).
;; Prove that ABCD is a cyclic quadrilateral if and only if AP = CP.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D P)
     (-> (&& (is-square A B C D)
               (! (is-angle-bisector (line B D) (angle A B C)))
               (! (is-angle-bisector (line B D) (angle C D A)))
               (point-inside-of P (square A B C D))
               (= (rad-of-angle (angle P B C)) (rad-of-angle (angle D B A)))
               (= (rad-of-angle (angle P D C)) (rad-of-angle (angle B D A))))
           (<-> (exists (O)
                        (&& (circle-type O)
                            (is-inscribed-in (square A B C D) O)))
                (= (length-of (seg A P)) (length-of (seg C P))))))))

