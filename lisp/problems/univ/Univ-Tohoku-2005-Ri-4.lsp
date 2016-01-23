;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2005, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a negative real number, and consider the parabola $C_1$:
;; $y = a x^2 + b x + c$. When $C_1$ is in contact with the curve $C_2$:
;; $y =\{\begin{matrix} x^2-x+\frac{3}{4} &(if x > 0)\\ x^2+2 x+\frac{3}{4} &(if x\le 0)\end{matrix}$
;; at two points, represent the area of the region enclosed by $C_1$ and
;; $C_2$ using $a$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (S)
        (exists (C1 C2)
                (&& (< a 0)
                    (= C1 (graph-of (fun (Lam x (+ (* a (^ x 2))
                                                   (* b x)
                                                   c)))))
                    (= C2 (shape-of-cpfun (PLam p (&& (-> (> (x-coord p) 0)
                                                          (= (y-coord p)
                                                             (+ (^ (x-coord p) 2)
                                                                (- (x-coord p))
                                                                (/ 3 4))))
                                                      (-> (<= (x-coord p) 0)
                                                          (= (y-coord p)
                                                             (+ (^ (x-coord p) 2)
                                                                (* 2 (x-coord p))
                                                                (/ 3 4))))))))
                    (exists (P Q)
                            (&& (! (= P Q))
                                (tangent C1 C2 P)
                                (tangent C1 C2 Q)))
                    (= S (area-of (shape-enclosed-by (list-of C1 C2))))))))

(def-answer p (PLam S (= S (/ 9 (* 32 (^ (- 1 a) 2))))))

