;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2003, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Assume that the parabolas $A$: $y = x^2$ and $B$:
;; $y = -(x - a)^2 + b$ intersect with each other at two different
;; points $P(x_1, y_1)$, $Q(x_2, y_2)$ ( $x_1 > x_2$).
;;
;; (1) When $x_1 - x_2 = 2$ is true, represent $b$ using $a$.
;;
;; (2) When $a$ and $b$ change satisfying $x_1 - x_2 = 2$, find and draw
;; the region that the straight line $PQ$ pass through.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (b)
        (exists (A B P Q x1 x2 y1 y2)
                (&& (= A (shape-of-cpfun (PLam p (= (y-coord p)
                                                    (^ (x-coord p) 2)))))
                    (= B (shape-of-cpfun (PLam p (= (y-coord p)
                                                    (- b (^ (- (x-coord p) a) 2))))))
                    (intersect A B P)
                    (intersect A B Q)
                    (= P (point x1 y1))
                    (= Q (point x2 y2))
                    (> x1 x2)
                    (= 2 (- x1 x2))))))

(def-directive
  p2
  (Find (D)
        (exists (A)
          (&& (= A (shape-of-cpfun (PLam p (= (y-coord p)
                (^ (x-coord p) 2)))))
        (= D (shape-of-cpfun (PLam p (exists (a b B P Q x1 x2 y1 y2)
                     (&& (on p (line P Q))
                   (= B (shape-of-cpfun (PLam p (= (y-coord p)
                           (- b (^ (- (x-coord p) a) 2))))))
                   (intersect A B P)
                   (intersect A B Q)
                   (= P (point x1 y1))
                   (= Q (point x2 y2))
                   (> x1 x2)
                   (= 2 (- x1 x2)))))))))))

(def-answer p1 (PLam b (= b (+ (* (/ 1 2) (^ a 2)) 2))))

(def-answer p2 (PLam D (= D (shape-of-cpfun (PLam P (<= (y-coord P) (+ (^ (x-coord P) 2) 1)))))))

