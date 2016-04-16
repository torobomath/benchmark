;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2001, Science Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-26
;;
;; <PROBLEM-TEXT>
;; Draw two tangents to the circle $x^2 + y^2 = 1$ on the $x y$ plane
;; from the point $P(a, b)$ outside the circle. Let $A$ be the points of
;; contact, and let $Q$ be the middle point of the line segment $AB$.
;;
;; (1) Represent the coordinates of the point $Q$ using $a$ and $b$.
;;
;; (2) When the point $P$ moves on the circle $(x - 3)^2 + y^2 = 1$,
;; find the locus of the point $Q$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (Q)
        (exists (P l m A B)
                (&& (= P (point a b))
                    (point-outside-of P (unit-circle))
                    (line-type l)
                    (line-type m)
                    (! (= A B))
                    (tangent l (unit-circle) A)
                    (tangent m (unit-circle) B)
                    (on P l)
                    (on P m)
                    (= Q (midpoint-of A B))))))

(def-directive
  p2
  (Find (Q)
        (exists (P l m A B)
                (&& (= P (point a b))
                    (point-outside-of P (unit-circle))
                    (on P (shape-of-cpfun (PLam p (= (+ (^ (- (x-coord p) 3) 2)
                                                        (^ (y-coord p) 2))
                                                     1))))
                    (line-type l)
                    (line-type m)
                    (! (= A B))
                    (tangent l (unit-circle) A)
                    (tangent m (unit-circle) B)
                    (on P l)
                    (on P m)
                    (= Q (midpoint-of A B))))))

(def-answer p1 (PLam Q (&&
  (point-outside-of (point a b) (unit-circle))
  (= Q (point (/ a (+ (^ a 2) (^ b 2))) (/ b (+ (^ a 2) (^ b 2)))))
)))

(def-answer p2 (PLam Q (&&
  (point-outside-of (point a b) (unit-circle))
  (on (point a b) (shape-of-cpfun (PLam p (= (+ (^ (- (x-coord p) 3) 2) (^ (y-coord p) 2)) 1))))
  (= (+ (^ (x-coord Q) 2) (^ (y-coord Q) 2) (- (* (/ 3 4) (x-coord Q))) (/ 1 8)) 0)
)))

