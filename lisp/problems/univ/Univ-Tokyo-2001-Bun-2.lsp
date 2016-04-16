;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2001, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-19
;;
;; <PROBLEM-TEXT>
;; The $2$ points $A$ and $B$ start from the origin at the time of $0$
;; and move on the $xy$ plane. The coordinates of the point $A$ at the
;; time of $t$ are given as $(t^2, 0)$. The point $B$ first moves on the
;; $y$ axis in the $y$ increasing direction at the constant speed of
;; $1$, but after reaching the point $C(0, 3)$, moves on the straight
;; line passing through that point and parallel to the $x$ axis in the
;; $x$ increasing direction at the constant speed of $1$. When $t>0$,
;; let $S(t)$ be the area of the triangle $ABC$.
;;
;; (1) Draw a rough graph of the function $S(t)$( $t>0$).
;;
;; (2) When $u$ is a positive real number, let $M(u)$ be the maximum
;; value of $S(t)$ in the range of $0<t\le u$. Draw a rough graph of the
;; function $M(u)$( $u>0$).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Draw (x)
  (= x (shape-of-cpfun (PLam p (&& (= (y-coord p)
              (area-of (triangle
                  (point (^ (x-coord p) 2) 0)
                  (point (if (< (x-coord p) 3) 0 (- (x-coord p) 3)) (if (< (x-coord p) 3) (x-coord p) 3))
                  (point 0 3))))
           (< 0 (x-coord p))))))))

(def-directive
  p2
  (Draw (x) (= x (shape-of-cpfun (PLam p (&& (< 0 (x-coord p))
                                             (= (y-coord p)
                                                (max-of (PLam y (exists (t)
                                                                        (&& (= y
                                                                               (area-of (triangle
                                                                                          (point (^ t 2) 0)
                                                                                          (point (if (< t 3) 0 (- t 3)) (if (< t 3) t 3))
                                                                                          (point 0 3))))
                                                                            (< 0 t)
                                                                            (<= t (x-coord p)))))))))))))

(def-answer p1 (shape-of-cpfun (PLam p (|| (&& (< 0 (x-coord p))
                                               (<= (x-coord p) 3)
                                               (= (y-coord p)
                                                  (- (* (/ 3 2) (^ (x-coord p) 2))
                                                     (* (/ 1 2) (^ (x-coord p) 3)))))
                                           (&& (<= 3 (x-coord p))
                                               (= (y-coord p)
                                                  (- (* (/ 3 2) (x-coord p))
                                                     (/ 9 2))))))))

(def-answer p2 (shape-of-cpfun (PLam p (|| (&& (< 0 (x-coord p))
                                               (<= (x-coord p) 2)
                                               (= (y-coord p) (- (* (/ 3 2) (^ (x-coord p) 2)) (* (/ 1 2) (^ (x-coord p) 3)))))
                                           (&& (<= 2 (x-coord p))
                                               (<= (x-coord p) (/ 13 3))
                                               (= (y-coord p) 2))
                                           (&& (<= (/ 13 3) (x-coord p))
                                               (= (y-coord p) (- (* (/ 3 2) (x-coord p)) (/ 9 2))))))))

