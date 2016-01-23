;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 1999, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-09
;;
;; <PROBLEM-TEXT>
;; Define $0 < a < 1$. Let $A$ be the intersection of the curves
;; $y = 1 - x^2$ and $y =(\frac{1}{a^2} - 1)x^2$ in the first quadrant,
;; and let $B$ be the foot of the perpendicular drawn from $A$ to the
;; $x$ axis. Let $O$ be the origin, and let $S$ be the area of the
;; region enclosed by the line segments $OB$, $AB$, and the curve
;; $y =(\frac{1}{a^2} - 1)x^2$. Answer the following questions:
;;
;; (1) Find the coordinates of the point $B$.
;;
;; (2) Represent the area $S$ using $a$.
;;
;; (3) Find the value of $a$ that gives the maximum value of the area
;; $S$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_simpl
  (Find (B)
    (exists (A F G O)
      (&&
        (< 0 a)
        (< a 1)
        (= F (graph-of (poly-fun (list-of 1 0 (- 1)))))
        (= G (graph-of (poly-fun (list-of 0 0 (+ (/ 1 (^ a 2)) (- 1))))))
        (on A F)
        (on A G)
        (on A (1st-quadrant))
        (on B (x-axis))
        (perpendicular (line A B) (x-axis))
        (= O (origin))
      ))))

(def-directive
  p1
  (Find (B)
    (exists (A F G O S)
      (&&
        (< 0 a)
        (< a 1)
        (= F (graph-of (poly-fun (list-of 1 0 (- 1)))))
        (= G (graph-of (poly-fun (list-of 0 0 (+ (/ 1 (^ a 2)) (- 1))))))
        (on A F)
        (on A G)
        (on A (1st-quadrant))
        (on B (x-axis))
        (perpendicular (line A B) (x-axis))
        (= O (origin))
        (= S (area-of (shape-enclosed-by (list-of
          (seg O B)
          (seg A B)
          G))))
      ))))

(def-directive
  p2
  (Find (S)
    (exists (A F G O B)
      (&&
        (< 0 a)
        (< a 1)
        (= F (graph-of (poly-fun (list-of 1 0 (- 1)))))
        (= G (graph-of (poly-fun (list-of 0 0 (+ (/ 1 (^ a 2)) (- 1))))))
        (on A F)
        (on A G)
        (on A (1st-quadrant))
        (on B (x-axis))
        (perpendicular (line A B) (x-axis))
        (= O (origin))
        (= S (area-of (shape-enclosed-by (list-of
          (seg O B)
          (seg A B)
          G))))
      ))))

(def-answer p1_simpl (PLam B (&&
  (< 0 a) (< a 1)
  (= B (point a 0)))))

(def-answer p1 (PLam B (&&
  (< 0 a) (< a 1)
  (= B (point a 0)))))

(def-answer p2 (PLam S (&&
  (< 0 a) (< a 1)
  (= S (* (/ 1 3) (- a (^ a 3)))))))

