;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-15
;;
;; <PROBLEM-TEXT>
;; Let $max(x, y, z)$ be the maximum number, and $min(x, y, z)$ the
;; minimum number, among three real numbers: $x$, $y$, and $z$. Let $R$
;; be the set of all the points whose coordinates are $x$, $y$, and $z$
;; that satisfy the following conditions:
;;
;; $x\ge 0$, $y\ge 0$, $z\ge 0$,
;;
;; $max(x, y, z)\le a$, and
;;
;; $x + y + z - min(x, y, z)\le a + b$.
;;
;; Find the volume of $R$, where $a$ and $b$ are real numbers, and
;; $a > b > 0$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
    (Find (V)
    (&& (> a b)
        (> b 0)
        (exists (R) (&& (= R (shape-of-cpfun (PLam p (exists (x y z)
                   (&& (= x (x-coord p))
                       (= y (y-coord p))
                       (= z (z-coord p))
                       (>= x 0)
                       (>= y 0)
                       (>= z 0)
                       (<= (list-max (list-of x y z)) a)
                       (<= (+ x y z (- (list-min (list-of x y z)))) (+ a b)))))))
            (= V (volume-of R)))))))

(def-answer p (PLam V (&& (> a b)
        (> b 0)
              (= V (/ (+ (^ a 3) (* 3 (^ a 2) b) (* 3 a (^ b 2)) (- (* 3 (^ b 3)))) 4)))))

