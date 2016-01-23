;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2003, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-30
;;
;; <PROBLEM-TEXT>
;; Consider the parabola $C$: $y = a x^2$ ( $a > 0$). Let $l$ be the
;; straight line passing through $P$ and orthogonal to the tangent to
;; the parabola $C$ at the point $P(p, a p^2)$ ( $p\not= 0$). Let $S(P)$
;; be the area of the region enclosed by the straight line $l$ and the
;; parabola $C$.
;;
;; (1) Find the equation of the straight line $l$.
;;
;; (2) Move the point $P$ in the range of $p > 0$. Then, find the
;; minimum value of $S(P)$ and the inclination $m$ of the straight line
;; $l$ at that time.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (l)
  (exists (m P C l2) (&&
    (line-type l2)
    (line-type l)
    (= C (graph-of (poly-fun (list-of 0 0 a))))
      (< 0 a)
    (= P (point p (* a (^ p 2))))
      (! (= p 0))
    (tangent C l2 P)
    (on P l)
    (perpendicular l l2)
  ))))

(def-answer
  p1 (PLam l (&&
  (< 0 a) (! (= p 0))
    (= l (shape-of-cpfun (PLam P
      (= (y-coord P)
         (+ (* (- (/ 1 (* 2 a p))) (x-coord P))
      (/ 1 (* 2 a))
      (* a (^ p 2))))))))))

(def-directive
  p2
  (Find (min_sp)
  (&& (minimum (set-by-def (PLam sp
      (exists (l2 l P C p) (&&
        (line-type l2)
        (line-type l)
        (= C (graph-of (poly-fun (list-of 0 0 a))))
        (< 0 a)
        (= P (point p (* a (^ p 2))))
        (> p 0)
        (tangent C l2 P)
        (on P l)
        (perpendicular l l2)
        (= sp (area-of (shape-enclosed-by (list-of l C))))
      ))
      )) min-sp))))

(def-answer p2 (PLam ans (= ans (/ 4 (* 3 (^ a 2))))))

(def-directive
  p3
  (Find (m) (exists (C min-sp) (&&
    (= C (graph-of (poly-fun (list-of 0 0 a))))
      (minimum (set-by-def (PLam sp
      (exists (l2 l P p) (&&
        (line-type l2)
        (line-type l)
        (< 0 a)
        (= P (point p (* a (^ p 2))))
        (> p 0)
        (tangent C l2 P)
        (on P l)
        (perpendicular l l2)
        (= sp (area-of (shape-enclosed-by (list-of l C))))
      ))
      )) min-sp)
    (line-type l2)
    (line-type l)
    (< 0 a)
    (= P (point p (* a (^ p 2))))
    (> p 0)
    (tangent C l2 P)
    (on P l)
    (perpendicular l l2)
    (= min_sp (area-of (shape-enclosed-by (list-of l C))))
    (is-slope-of m l)
  ))))

(def-answer p3 (PLam ans (= ans -1)))

