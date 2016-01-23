;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2011, Science Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-18
;;
;; <PROBLEM-TEXT>
;; Answer the following questions:
;;
;; (1) Find the equation of the circle passing through the points
;; $O(0, 0)$, $A(2, 1)$, and $B(1, 2)$ on the $x y$ plane.
;;
;; (2) When $t$ moves across all real numbers, let $l$ be the straight
;; line formed by the point $(t+2, t+2, t)$ in the $x y z$ space. Find
;; the condition that $a$, $b$, must $c$ specify in order that the
;; spherical surface $S$ passing through the points $O(0, 0, 0)$,
;; $A^{\prime }(2, 1, 0)$, and $B^{\prime }(1, 2, 0)$ and centered at
;; $C(a, b, c)$ has common points with the straight line $l$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (C)
    (exists (O A B)
      (&&
        (circle-type C)
        (= O (point 0 0))
        (= A (point 2 1))
        (= B (point 1 2))
        (on O C)
        (on A C)
        (on B C)
      ))))

(namespace 3d)

(def-directive
  p2
  (Find (abc)
    (exists (a b c)
      (&& (= abc (list-of a b c))
        (exists (O A B C l S)
          (&&
            (line-type l)
            (= l (shape-of-cpfun (PLam p (exists (t) (= p (point (+ t 2) (+ t 2) t))))))
            (sphere-type S)
            (= O (point 0 0 0))
            (= A (point 2 1 0))
            (= B (point 1 2 0))
            (on O S)
            (on A S)
            (on B S)
            (= C (point a b c))
            (= C (center-of S))
            (intersect l S)
          ))))))

(def-answer p1 (PLam C (= C (2d.circle (2d.point (/ 5 6) (/ 5 6)) (sqrt (/ 25 18))))))

(def-answer p2 (PLam abc
  (exists (a b c)
   (&& (= abc (list-of a b c))
       (||
         (&&  (= a (/ 5 6)) (= b (/ 5 6)) (<= c (/ 1 3)))
         (&&  (= a (/ 5 6)) (= b (/ 5 6)) (<= (/ 13 3) c))
         )
       ))))

