;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2007, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Consider five points A, B, C, D and E such that ABCD is a parallelogram
;; and BCED is a cyclic quadrilateral. Let l be a line passing through A.
;; Suppose that l intersects the interior of the segment DC at F and intersects
;; line BC at G. Suppose also that EF = EG = EC. Prove that l is the bisector
;; of angle DAB.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D E F G l)
                (-> (&& (is-parallelogram A B C D)
                        (is-square B C E D)
                        (exists (S)
                                (&& (circle-type S)
                                    (on B S)
                                    (on C S)
                                    (on E S)
                                    (on D S)))
                        (line-type l)
                        (on A l)
                        (intersect l (seg D C) F)
                        (! (= F D))
                        (! (= F C))
                        (intersect l (line B C) G)
                        (= (distance E F) (distance E G))
                        (= (distance E G) (distance E C)))
                    (is-angle-bisector l (angle D A B))))))

