;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2007, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; On the $x y$ plane, let $C$ be the circle of the radius $r$ $(r > 0)$
;; passing through the origin $O$, and let $A$ be the center of the
;; circle. For the point $P$ on $C$ except $O$, consider the point $Q$
;; determined by the following $2$ conditions: (a) $\vec{OP}$ and
;; $\vec{OQ}$ have the same direction. (b) $|\vec{OP}| |\vec{OQ}| = 1$.
;; Answer the following questions:
;;
;; (1) Assuming that the point $P$ moves on $C$ except $O$, prove that
;; the point $Q$ moves on a straight line orthogonal to $\vec{OA}$.
;;
;; (2) Let $l$ be the straight line described in $l$. Assuming that $l$
;; intersects with $C$ at two points, find the range of the possible
;; value of $r$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (O r C A P Q)
                (-> (&& (= O (origin))
                        (< 0 r)
                        (= C (circle A r))
                        (on O C)
                        (on P C)
                        (! (= P O))
                        (vec-same-direction (vec O P) (vec O Q))
                        (= (* (distance O P) (distance O Q)) 1))
                    (exists (l)
                            (&& (line-type l)
                                (perpendicular l (line O A))
                                (on Q l)))))))

(def-directive
  p2
  (Find (r)
        (exists (O C A P Q l p q)
                (&& (= O (origin))
                    (< 0 r)
                    (= C (circle A r))
                    (on O C)
                    (on P C)
                    (! (= P O))
                    (vec-same-direction (vec O P) (vec O Q))
                    (= (* (distance O P) (distance O Q)) 1)
                    (line-type l)
                    (perpendicular l (line O A))
                    (on Q l)
                    (! (= p q))
                    (on p (intersection C l))
                    (on q (intersection C l))))))

(def-answer p2 (PLam r (> r (/ 1 2))))

