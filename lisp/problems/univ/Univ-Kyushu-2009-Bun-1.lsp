;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2009, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Consider the isosceles triangle $ABC$ with $\angle A$ as the right
;; angle. Let $M$ be the middle point of the side $BC$, and $P$, the
;; point that internally divides the side $BC$ in a ratio of $1 : 3$.
;; Let $Q$ and $R$ be the intersections of the sides $AB$ and $AC$ and
;; the straight line passing through the point $P$ and parallel to the
;; side $BC$, respectively. Answer the following questions:
;;
;; (1) Find $\cos\angle QMR$.
;;
;; (2) Judge which is larger, twice $\angle QMR$ or $\angle QMB$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (cosQMR)
  (exists (A B C M l P Q R)
    (&&
      (is-isosceles-triangle A B C)
      (is-right (angle B A C))
      (= M (midpoint-of B C))
      (divide-internally P (seg A M) 1 3)
      (line-type l)
      (parallel l (seg B C))
      (on P l)
      (on Q l)
      (on Q (seg A B))
      (on R l)
      (on R (seg A C))
      (= cosQMR (cos-of-angle (angle Q M R)))))))

(def-directive
  p2
  (Show
    (forall (A B C M l P Q R)
            (-> (&& (is-isosceles-triangle A B C)
                    (is-right (angle B A C))
                    (= M (midpoint-of B C))
                    (divide-internally P (seg A M) 1 3)
                    (line-type l)
                    (parallel l (seg B C))
                    (on P l)
                    (on Q l)
                    (on Q (seg A B))
                    (on R l)
                    (on R (seg A C)))
                (> (* 2 (rad-of-angle (angle Q M R))) (rad-of-angle (angle Q M B)))))))

(def-answer p1 (PLam cosQMR (= cosQMR (/ 4 5))))

