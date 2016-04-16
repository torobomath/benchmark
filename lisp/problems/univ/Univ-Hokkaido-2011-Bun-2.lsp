;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2011, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-18
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a positive real number, let $b$ and $c$ be real numbers,
;; and let $C$ be the parabola $y = a x^2 + b x + c$ that passes through
;; the points $P(-1, 3)$ and $Q(1, 4)$. Let $l_1$ and $l_2$ be the
;; tangents to $C$ at the points $P$ and $Q$, respectively.
;;
;; (1) Find the value of $b$, and represent $c$ using $a$.
;;
;; (2) Represent the coordinates of the intersection of $l_1$ and $l_2$
;; using $a$.
;;
;; (3) Find the value of $a$ such that the area of the region enclosed
;; by the parabola $C$ and the tangents $l_1$ and $l_2$ is $1$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  a1_1
  (Find (b)
    (exists (a c P Q C l1 l2)
      (&&
        (< 0 a)
        (= P (point (- 1) 3))
        (= Q (point 1 4))
        (= C (graph-of (poly-fun (list-of c b a))))
        (on P C)
        (on Q C)
        (line-type l1)
        (line-type l2)
        (tangent C l1 P)
        (tangent C l2 Q)
      ))))

(def-directive
  a1_2
  (Find (c)
    (exists (b P Q C l1 l2)
      (&&
        (< 0 a)
        (= P (point (- 1) 3))
        (= Q (point 1 4))
        (= C (graph-of (poly-fun (list-of c b a))))
        (on P C)
        (on Q C)
        (line-type l1)
        (line-type l2)
        (tangent C l1 P)
        (tangent C l2 Q)
      ))))

(def-directive
  a2
  (Find (U)
    (exists (b c P Q C l1 l2)
      (&&
        (< 0 a)
        (= P (point (- 1) 3))
        (= Q (point 1 4))
        (= C (graph-of (poly-fun (list-of c b a))))
        (on P C)
        (on Q C)
        (line-type l1)
        (line-type l2)
        (tangent C l1 P)
        (tangent C l2 Q)
        (lines-intersect-at (list-of l1 l2) U)
      ))))

(def-directive
  a3
  (Find (a)
    (exists (b c P Q C l1 l2)
      (&&
        (< 0 a)
        (= P (point (- 1) 3))
        (= Q (point 1 4))
        (= C (graph-of (poly-fun (list-of c b a))))
        (on P C)
        (on Q C)
        (line-type l1)
        (line-type l2)
        (tangent C l1 P)
        (tangent C l2 Q)
        (= 1 (area-of (shape-enclosed-by (list-of C l1 l2))))
      ))))

(def-answer a1_1 (PLam b (= b (/ 1 2))))

(def-answer a1_2 (PLam c (&& (= c (- (/ 7 2) a)) (< 0 a))))

(def-answer a2 (PLam U (exists (Ux Uy)
             (&& (< 0 a)
           (= U (point Ux Uy))
           (= Ux 0)
           (= Uy (+ (* -2 a) (/ 7 2)))))))

(def-answer a3 (PLam a (= a (/ 3 2))))

