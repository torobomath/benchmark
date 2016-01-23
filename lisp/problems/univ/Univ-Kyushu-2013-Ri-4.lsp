;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2013, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $S$ be the circle centered at the origin $O$ and passing through
;; the point $A(0, 1)$. When the circle $T$ inscribed in the circle $S$
;; at the point $B(\frac{1}{2}, \frac{\sqrt{3}}{2})$ is in contact with
;; the $y$ axis at the point $C$, answer the following questions:
;;
;; (1) Find the coordinates of the center $D$ and the radius of the
;; circle $T$.
;;
;; (2) Let $l$ be the straight line passing through the point $D$ and
;; parallel to the $x$ axis. Find the volume of the solid obtained by
;; rotating the figure enclosed by the shorter arc
;; $\stackrel{\frown}{AB}$ of the $S$, the shorter arc
;; $\stackrel{\frown}{BC}$ of the circle $T$, and the line segment $AC$
;; around $l$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Find (D)
        (exists (A B C S T)
                (&& (= A (point 0 1))
                    (circle-type S)
                    (= (center-of S) (origin))
                    (on A S)
                    (circle-type T)
                    (is-inscribed-in T S)
                    (= B (point (/ 1 2) (/ (sqrt 3) 2)))
                    (tangent S T B)
                    (tangent T (y-axis) C)
                    (= D (center-of T))))))

(def-directive
  p1_2
  (Find (r)
        (exists (A B C S T)
                (&& (= A (point 0 1))
                    (circle-type S)
                    (= (center-of S) (origin))
                    (on A S)
                    (circle-type T)
                    (is-inscribed-in T S)
                    (= B (point (/ 1 2) (/ (sqrt 3) 2)))
                    (tangent S T B)
                    (tangent T (y-axis) C)
                    (= r (radius-of T))))))

(def-directive
  p2
  (Find (V)
        (exists (A B C D K S T l arcAB arcBC)
                (&& (= K (shape-enclosed-by (list-of (seg A C) arcAB arcBC)))
                    (= A (point 0 1))
                    (circle-type S)
                    (= (center-of S) (origin))
                    (on A S)
                    (circle-type T)
                    (is-inscribed-in T S)
                    (= B (point (/ 1 2) (/ (sqrt 3) 2)))
                    (tangent S T B)
                    (tangent T (y-axis) C)
                    (= D (center-of T))
                    (line-type l)
                    (parallel l (x-axis))
                    (on D l)
                    (= arcAB (minor-arc (arc (center-of S) A B)))
                    (= arcBC (minor-arc (arc (center-of T) B C)))
                    (= V (3d.volume-of (3d.solid-of-revolution (3d.import-2d-shape K) (3d.import-2d-shape l))))))))

(def-answer p1_1 (PLam D (= D (point (/ 1 3) (/ (sqrt 3) 3)))))

(def-answer p1_2 (PLam r (= r (/ 1 3))))

(def-answer p2 (PLam V (= V (- (* (/ 1 3) (Pi)) (* (/ (sqrt 3) 18) (^ (Pi) 2))))))

