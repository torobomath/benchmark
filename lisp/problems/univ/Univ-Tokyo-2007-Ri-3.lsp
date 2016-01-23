;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2007, Science Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2013-12-05
;;
;; <PROBLEM-TEXT>
;; When the $2$ points $P$ and $Q$ freely move on the curve $y=x^2$ (
;; $-1\le x\le 1$) on the coordinate plane, let $D$ be the moving range
;; of the point $R$ that internally divides the line segment $PQ$ in a
;; ratio of $1:2$. However, if $R=P$, assume that $R=P$.
;;
;; (1) Let $a$ be the real number that satisfies $-1\le a\le 1$, then
;; represent the condition that $b$ must satisfy in order for the point
;; $(a, b)$ to belong to $D$ using $a$.
;;
;; (2) Draw $D$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (b)
  (exists (p q)
    (&& (&& (&& (&& (= (y-coord p) (^ (x-coord p) 2))
        (= (y-coord q) (^ (x-coord q) 2)))
          (&& (&& (<= -1 (x-coord p)) (<= (x-coord p) 1))
        (&& (<= -1 (x-coord q)) (<= (x-coord q) 1))))
      (&& (<= -1 a) (<= a 1)))
        (divide-internally (point a b) (seg p q) 1 2)))))

(def-directive
  p2
  (Find (x)
  (= x
     (shape-of-cpfun (PLam y (exists (p q)
            (&& (&& (&& (&& (= (y-coord p) (^ (x-coord p) 2))
                (= (y-coord q) (^ (x-coord q) 2)))
                  (&& (&& (<= -1 (x-coord p)) (<= (x-coord p) 1))
                (&& (<= -1 (x-coord q)) (<= (x-coord q) 1))))
              (&& (<= -1 (x-coord y)) (<= (x-coord y) 1)))
                (divide-internally y (seg p q) 1 2))))))))

(def-answer p1 (PLam b (|| (&& (<= -1 a)
             (<= a (- (/ 1 3)))
             (<= (^ a 2) b)
             (<= b (+ (* 3 (^ a 2)) (* 4 a) 2)))
      (&& (<= (/ -1 3) a)
          (<= a 0)
          (<= (^ a 2) b)
          (<= b (+ (* (/ 3 2) (^ a 2)) (- a) (/ 1 2))))
      (&& (<= 0 a)
          (<= a (/ 1 3))
          (<= (^ a 2) b)
          (<= b (+ (* (/ 3 2) (^ a 2)) a (/ 1 2))))
      (&& (<= (/ 1 3) a)
          (<= a 1)
          (<= (^ a 2) b)
          (<= b (+ (* 3 (^ a 2)) (- (* 4 a)) 2))))))

(def-answer p2 (PLam x (= x (shape-of-cpfun (PLam p (|| (&& (<= (- 1) (x-coord p))
                  (<= (x-coord p) (- (/ 1 3)))
                  (<= (^ (x-coord p) 2) (y-coord p))
                  (<= (y-coord p) (+ (* 3 (^ (x-coord p) 2))
                         (* 4 (x-coord p))
                         2))
                  )
              (&& (<= (- (/ 1 3)) (x-coord p))
                  (<= (x-coord p) 0)
                  (<= (^ (x-coord p) 2) (y-coord p))
                  (<= (y-coord p) (+ (* (/ 3 2) (^ (x-coord p) 2))
                         (- (x-coord p))
                         (/ 1 2))))
              (&& (<= 0 (x-coord p))
                  (<= (x-coord p) (/ 1 3))
                  (<= (^ (x-coord p) 2) (y-coord p))
                  (<= (y-coord p) (+ (* (/ 3 2) (^ (x-coord p) 2))
                         (x-coord p)
                         (/ 1 2))))
              (&& (<= (/ 1 3) (x-coord p))
                  (<= (x-coord p) 1)
                  (<= (^ (x-coord p) 2) (y-coord p))
                  (<= (y-coord p) (+ (* 3 (^ (x-coord p) 2))
                         (- (* 4 (x-coord p)))
                         2)))))))))

