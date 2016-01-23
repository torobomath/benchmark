;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2013, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $D$ be the region defined by the following simultaneous
;; inequalities: $x + 2 y\le 5$, $3 x + y\le 8$, $- 2 x - y\le 4$, and
;; $- x - 4 y\le 7$
;; When the point $P(x, y)$ moves in the region $D$, let $Q$ and $R$ be
;; the points that give the maximum and minimum values of $x + y$,
;; respectively. Answer the following questions:
;;
;; (1) Find the coordinates of the points $Q$ and $R$.
;;
;; (2) Assume that $a > 0$ and $b > 0$. Assume that when the point
;; $P(x, y)$ moves in the region $D$, $P(x, y)$ becomes the maximum only
;; at the point $Q$ and becomes the minimum only at the point $R$. Find
;; the value of $\frac{a}{b}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (QR)
        (exists (D Q R)
                (&& (= D (shape-of-cpfun (PLam p (&& (<= (+ (x-coord p) (* 2 (y-coord p))) 5)
                                                     (<= (+ (* 3 (x-coord p)) (y-coord p)) 8)
                                                     (<= (- (+ (* 2 (x-coord p)) (y-coord p))) 4)
                                                     (<= (- (+ (x-coord p) (* 4 (y-coord p)))) 7)))))
                    (on Q D)
                    (on R D)
                    (forall (X)
                            (-> (on X D)
                                (&& (<= (+ (x-coord X) (y-coord X))
                                        (+ (x-coord Q) (y-coord Q)))
                                    (<= (+ (x-coord R) (y-coord R))
                                        (+ (x-coord X) (y-coord X))))))
                    (= QR (list-of Q R))))))

(def-directive
  p2
  (Find (ab)
        (exists (D Q R a b)
                (&& (= D (shape-of-cpfun (PLam p (&& (<= (+ (x-coord p) (* 2 (y-coord p))) 5)
                                                     (<= (+ (* 3 (x-coord p)) (y-coord p)) 8)
                                                     (<= (- (+ (* 2 (x-coord p)) (y-coord p))) 4)
                                                     (<= (- (+ (x-coord p) (* 4 (y-coord p)))) 7)))))
                    (on Q D)
                    (on R D)
                    (forall (X)
                            (-> (on X D)
                                (&& (<= (+ (x-coord X) (y-coord X))
                                        (+ (x-coord Q) (y-coord Q)))
                                    (<= (+ (x-coord R) (y-coord R))
                                        (+ (x-coord X) (y-coord X))))))
                    (< 0 a)
                    (< 0 b)
                    (= ab (/ a b))
                    (forall (X)
                            (-> (&& (on X D)
                                    (! (= X Q))
                                    (! (= X R)))
                                (&& (< (+ (* a (x-coord X)) (* b (y-coord X)))
                                       (+ (* a (x-coord Q)) (* b (y-coord Q))))
                                    (< (+ (* a (x-coord R)) (* b (y-coord R)))
                                       (+ (* a (x-coord X)) (* b (y-coord X)))))))))))

(def-answer p1 (PLam QR (= QR (list-of (point (/ 11 5) (/ 7 5)) (point (/ -9 7) (/ -10 7))))))

(def-answer p2 (PLam ab (&& (< (/ 1 2) ab) (< ab 2))))

