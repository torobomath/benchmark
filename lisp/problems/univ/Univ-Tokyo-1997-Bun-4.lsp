;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; For the real number $t$ that satisfies $0\le t\le 1$, define the
;; points $A$ and $B$ on the $xy$ plane as
;; $A(\frac{2(t^2+t+1)}{3(t+1)}, -2)$ and $B(\frac{2}{3} t, -2 t)$. When
;; $t$ moves in the range of $0\le t\le 1$, draw the movable range of
;; the straight line $AB$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Draw (D)
        (= D (shape-of-cpfun
        (PLam P (exists (t A B)
            (&& (<= 0 t)
          (<= t 1)
          (= A (point (/ (* 2 (+ (^ t 2) t 1))
                   (* 3 (+ t 1)))
                -2))
          (= B (point (* (/ 2 3) t)
                (* -2 t)))
          (on P (line A B)))))))))

(def-answer p (set-of-cfun (Lam x (PLam y (||
  (&& (<= x 0) (<= (+ (* 3 x) y) 0) (>= (+ y 2) 0))
  (&& (< 0 x) (< x 1) (||
    (&& (> y (* -3 x)) (<= y (- (^ x 3) (* 3 x))))
    (&& (= y (* -3 x)))
    (&& (< y (* -3 x)) (>= y -2))))
  (&& (<= 1 x) (>= (+ (* 3 x) y) 0) (<= (+ y 2) 0))
)))))

