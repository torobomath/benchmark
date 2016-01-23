;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2013, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Consider the quadrangular pyramid $POABC$ whose base is the square
;; $OABC$ with the side length of $1$ and whose vertex is $P$, where the
;; point $P$ satisfies the conditions
;; $\vec{OA}\cdot\vec{OP} =\frac{1}{4}$ and
;; $\vec{OC}\cdot\vec{OP} =\frac{1}{2}$ for the inner product. Let $M$
;; be the point that internally divides the side $AP$ in the ratio of
;; $2 : 1$, and let $N$ be the midpoint of the side $CP$. Assume that
;; the straight line $PQ$ passing through the point $P$ and the point
;; $Q$ on the straight line $BC$ is perpendicular to the plane $OMN$.
;; Find the ratio of the length $BQ : QC$ and the length of the line
;; segment $OP$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (ans)
        (exists (O A B C P M N Q OMN)
                (&& (= ans (list-of (/ (distance B Q)
                                       (distance Q C))
                                    (distance O P)))
                    (is-regular-square O A B C)
                    (= (distance O A) 1)
                    (is-square-pyramid P O A B C)
                    (= (inner-prod (vec O A) (vec O P))
                       (/ 1 4))
                    (= (inner-prod (vec O C) (vec O P))
                       (/ 1 2))
                    (divide-internally M (seg A P) 2 1)
                    (= N (midpoint-of C P))
                    (on Q (line B C))
                    (plane-type OMN)
                    (on O OMN)
                    (on M OMN)
                    (on N OMN)
                    (is-normal-vector-of (vec P Q) OMN)))))

(def-answer p1 (PLam ans (= ans (list-of (/ 1 5) (/ (sqrt 21) 4)))))

