;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2003, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Assume that the parabolas $A$: $y = x^2$ and $B$:
;; $y = -(x - a)^2 + b$ intersect with each other at different $2$
;; points $P(x_1, y_1)$, $Q(x_2, y_2)$ ( $x_1 > x_2$).
;;
;; (1) When $x_1 - x_2 = 2$ is true, represent $b$ using $a$.
;;
;; (2) When $a$ and $b$ change satisfying $x_1 - x_2 = 2$, find and draw
;; the region that the straight line $PQ$ pass through.
;;
;; (3) When $a$ and $b$ change satisfying $|\vec{PQ}| = 2$, find the
;; minimum value of the $y$ coordinate of the middle point of the line
;; segment $PQ$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (b)
        (exists (A B P Q x1 y1 x2 y2)
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
        (= D (shape-of-cpfun (PLam p (exists (a b B P Q x1 y1 x2 y2)
                     (&& (on p (line P Q))
                   (= B (shape-of-cpfun (PLam p (= (y-coord p)
                           (- b (^ (- (x-coord p) a) 2))))))
                   (intersect A B P)
                   (intersect A B Q)
                   (= P (point x1 y1))
                   (= Q (point x2 y2))
                   (> x1 x2)
                   (= 2 (- x1 x2)))))))))))

(def-directive
  p3
  (Find (y_min)
        (exists (A a b B P Q x1 y1 x2 y2)
          (&& (= A (shape-of-cpfun (PLam p (= (y-coord p)
                (^ (x-coord p) 2)))))
        (= B (shape-of-cpfun (PLam p (= (y-coord p)
                (- b (^ (- (x-coord p) a) 2))))))
        (intersect A B P)
        (intersect A B Q)
        (= P (point x1 y1))
        (= Q (point x2 y2))
        (> x1 x2)
        (= (distance P Q) 2)
        (= y_min (y-coord (midpoint-of P Q)))
        (forall (a2 b2 B2 P2 Q2 y_im x12 y12 x22 y22)
          (-> (&& (= B2 (shape-of-cpfun (PLam p (= (y-coord p)
                     (- b2 (^ (- (x-coord p) a2) 2))))))
            (intersect A B2 P2)
            (intersect A B2 Q2)
            (= P2 (point x12 y12))
            (= Q2 (point x22 y22))
            (> x12 x22)
            (= (distance P2 Q2) 2)
            (= y_im (y-coord (midpoint-of P2 Q2)))
               )
              (<= y_min y_im)
           )
         )
))))

(def-answer p1 (PLam b (= b (+ (* (/ 1 2) (^ a 2)) 2))))

(def-answer p2 (PLam D (= D (shape-of-cpfun (PLam P (<= (y-coord P) (+ (^ (x-coord P) 2) 1)))))))

(def-answer p3 (PLam y_min (= y_min (/ 3 4))))

(def-answer a1 (PLam b (= b (+ (* (/ 1 2) (^ a 2)) 2))))

(def-answer a2_1 (PLam D (= D (shape-of-cpfun (PLam P (<= (y-coord P) (+ (^ (x-coord P) 2) 1)))))))

(def-answer a2_2 (shape-of-cpfun (PLam P (<= (y-coord P) (+ (^ (x-coord P) 2) 1)))))

(def-answer a3 (PLam y_min (= y_min (/ 3 4))))

