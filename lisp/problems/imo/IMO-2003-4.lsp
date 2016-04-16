;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2003, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-21
;;
;; <PROBLEM-TEXT>
;; ABCD is cyclic. The feet of the perpendicular from D to the
;; lines AB, BC, CA are P, Q, R respectively. Show that the angle bisectors of
;; ABC and CDA meet on the line AC iff RP = RQ.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D P Q R l m)
                (-> (&& (exists (S) (&& (circle-type S)
                                        (on A S)
                                        (on B S)
                                        (on C S)
                                        (on D S)))
                        (pairwise-distinct (list-of A B C D))
      (on P (line A B))
                        (on Q (line B C))
                        (on R (line C A))
                        (perpendicular (line D P) (line A B))
                        (perpendicular (line D Q) (line B C))
                        (perpendicular (line D R) (line C A))
                        (line-type l)
                        (line-type m)
                        (is-angle-bisector l (angle A B C))
                        (is-angle-bisector m (angle C D A)))
                    (<-> (lines-intersect-at-one (list-of l m (line A C)))
                         (= (distance R P) (distance R Q)))))))

