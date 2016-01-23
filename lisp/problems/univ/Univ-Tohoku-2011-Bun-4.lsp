;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2011, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Assume that the two tangents of the parabola $y = x^2$ are
;; perpendicular to each other.
;;
;; (1) When the coordinates of the point of contact on $l$ is given as
;; $(a, a^2)$, represent the coordinates of the intersection of $l$ and
;; $m$ using $a$.
;;
;; (2) When $l$ and $m$ are symmetric to each other with respect to the
;; $y$ axis, find the area of the region enclosed by $l$, $m$, and the
;; parabola $y = x^2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (P)
        (exists (C l m)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (line-type l)
                    (line-type m)
                    (perpendicular l m)
                    (tangent l C (point a (^ a 2)))
                    (tangent m C)
                    (on P (intersection l m))))))

(def-directive
  p2
  (Find (S)
        (exists (C l m)
                (&& (= C (graph-of (fun (Lam x (^ x 2)))))
                    (line-type l)
                    (line-type m)
                    (perpendicular l m)
                    (tangent l C)
                    (tangent m C)
                    (line-symmetry-shapes l m (y-axis))
                    (= S (area-of (shape-enclosed-by (list-of l m C))))))))

(def-answer p1 (PLam P (&& (! (= a 0)) (= P (point (/ (- (* 4 (^ a 2)) 1) (* 8 a)) (- (/ 1 4)))))))

(def-answer p2 (PLam S (= S (/ 1 12))))

