;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1985, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; On the $x y$ plane, let $O$ be the origin, and $A$, the fixed point
;; $(1, 0)$. Assume that the points $P$ and $Q$ moves on the
;; circumference $x^2+y^2=1$, and the angle formed by rotating from the
;; line segment $OA$ to the line segment $OP$ in the positive direction
;; is equal to the angle formed by rotating from the line segment $OP$
;; to the line segment $OQ$ in the positive direction.
;;
;; Let $R$ be the intersection of the $x$ axis and the straight line
;; passing through the point $P$ and perpendicular to the $x$ axis, and
;; $S$, the intersection of the $x$ axis and the straight line passing
;; through the point $Q$ and perpendicular to the $x$ axis. When the
;; real number $l\ge 0$ is given, find the number of the combination of
;; the positions of the points $P$ and $Q$ such that the length of the
;; line segment $RS$ is equal to $l$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (n)
  (exists (O A S1 PQ-set)
    (&& (= O (origin))
        (= A (point 1 0))
        (= S1 (shape-of-cpfun (PLam p (= (+ (^ (x-coord p) 2)
              (^ (y-coord p) 2))
                 1))))
        (= n (cardinality-of PQ-set))
        (= PQ-set (set-by-def (PLam PQ (exists (P Q L1 L2 R S OAP OPQ)
                 (&& (= PQ (list-of P Q))
                     (on P S1)
                     (on Q S1)
                     (lines-intersect-angle (line O A) (line O P) OAP)
                     (lines-intersect-angle (line O P) (line O Q) OPQ)
                     (= OAP OPQ)
                                     (line-type L1)
                     (on P L1)
                     (perpendicular L1 (x-axis))
                     (on R (intersection L1 (x-axis)))
                                     (line-type L2)
                     (on Q L2)
                     (perpendicular L2 (x-axis))
                     (on S (intersection L2 (x-axis)))
                     (<= 0 l)
                     (= l (length-of (seg R S))))))))))))

(def-answer p (PLam n (&& (-> (= l 0) (= n 3))
        (-> (&& (< 0 l)
          (< l (/ 9 8)))
            (= n 6))
        (-> (= l (/ 9 8))
            (= n 4))
        (-> (&& (< (/ 9 8) l)
          (< l 2))
            (= n 2))
        (-> (= l 2)
            (= n 1))
        (-> (< 2 l)
            (= n 0)))))

