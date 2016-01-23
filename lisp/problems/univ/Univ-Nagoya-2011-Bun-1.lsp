;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2011, Humanities Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-15
;;
;; <PROBLEM-TEXT>
;; (1) Draw the graph of the function $y = x^3 - x^2$.
;;
;; (2) Find all the tangents to the curve $y = x^3 - x^2$ that pass
;; through the point $(\frac{3}{2}, 0)$.
;;
;; (3) Let $p$ be a constant. Find the number of different real
;; solutions of the cubic equation $x^3 - x^2 = p(x -\frac{3}{2})$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (C)
  (= C (graph-of (poly-fun (list-of 0 0 -1 1))))))

(def-directive
  p2
  (Find (l)
  (exists (p q t) (&&
    (< (x-coord p) (x-coord q))
    (= l (line p q))
    (on (point (/ 3 2) 0) l)
    (tangent (graph-of (poly-fun (list-of 0 0 -1 1))) l)
  ))))

(def-directive
  p3
  (Find (c)
  (= c (cardinality-of (set-by-def (PLam x (= (- (^ x 3) (^ x 2)) (* p (- x (/ 3 2))))))))))

(def-answer p1 (PLam C (= C (graph-of (poly-fun (list-of 0 0 -1 1))))))

(def-answer p2 (PLam l (||
  (= l (line (point 0 0) (point 1 0)))
  (= l (line (point 0 (/ -9 32)) (point (/ 3 2) 0)))
  (= l (line (point 0 -12) (point (/ 3 2) 0)))
)))

(def-answer p3 (PLam c (||
    (&& (< p 0) (= c 1))
    (&& (= p 0) (= c 2))
    (&& (< 0 p) (< p (/ 3 16)) (= c 3))
    (&& (= p (/ 3 16)) (= c 2))
    (&& (< (/ 3 16) p) (< p 8) (= c 1))
    (&& (= p 8) (= c 2))
    (&& (< 8 p) (= c 3))
)))

