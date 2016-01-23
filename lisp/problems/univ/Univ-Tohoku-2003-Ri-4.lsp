;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2003, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-18
;;
;; <PROBLEM-TEXT>
;; Consider the two points $P(u, u, 0)$ and $Q(u, 0, \sqrt{1-u^2})$ in
;; the $x y z$ space. When $u$ moves from $0$ to $1$, let $S$ be the
;; curved surface formed by the line segment $PQ$.
;;
;; (1) Find the distance between the point $(u, 0, 0)$ $(0\le u\le 1)$
;; and the line segment $PQ$.
;;
;; (2) Find the volume of the solid obtained by rotating the curved
;; surface $S$ around the $x$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (x)
        (exists (P Q)
          (&& (= P (point u u 0))
        (= Q (point u 0 (sqrt (- 1 (^ u 2)))))
        (<= 0 u)
        (<= u 1)
        (= x (point-shape-distance (point u 0 0)
                 (line P Q)))))))

(def-directive
  p2
  (Find (V)
        (exists (S)
                (&& (= S (shape-of-cpfun (PLam p (exists (u P Q)
                                                         (&& (<= 0 u)
                                                             (<= u 1)
                                                             (= P (point u u 0))
                                                             (= Q (point u 0 (sqrt (- 1 (^ u 2)))))
                                                             (on p (line P Q)))))))
                    (= V (volume-of (solid-of-revolution S (x-axis))))))))

(def-answer p1 (PLam x (&& (<= 0 u) (<= u 1) (= x (* u (sqrt (- 1 (^ u 2))))))))

(def-answer p2 (PLam V (= V (* (+ (/ (sqrt 2) 3) (/ 1 5)) (Pi)))))

