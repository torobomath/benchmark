;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2011, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Consider the point $P(\frac{1}{2}, \frac{1}{4})$ on the coordinate
;; plane. When $Q({\alpha}, {\alpha}^2)$ and $R({\beta}, {\beta}^2)$ on
;; the parabola $y=x^2$ move so that the points $P$, $Q$, and $R$ form
;; an isosceles triangle taking $QR$ as the base, find the locus of the
;; centroid $G(X, Y)$ of $\triangle PQR$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (G)
        (= G (shape-of-cpfun (PLam Gp
           (exists (alpha beta P Q R)
             (&& (= P (point (/ 1 2) (/ 1 4)))
                 (= Q (point alpha (^ alpha 2)))
                 (= R (point beta  (^ beta 2)))
                 (is-triangle P Q R)
                 (= (distance P Q) (distance P R))
                 (= Gp (centroid-of (triangle P Q R))))))))))

(def-answer p (PLam G (= G (shape-of-cpfun (PLam p (&& (= (y-coord p)
                                                          (- (/ 1 (* 9 (- (x-coord p) (/ 1 6))))
                                                             (/ 1 12)))
                                                       (< (/ 1 6) (x-coord p))
                                                       (< (x-coord p) (/ 1 2))))))))

