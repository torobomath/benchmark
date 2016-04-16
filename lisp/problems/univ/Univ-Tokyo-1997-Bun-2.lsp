;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be positive numbers, and let $ABC$ be the equilateral
;; triangle whose two vertices are the points $2$ and $A(a, 0)$ on the
;; $xy$ plane, where $C$ is a point in the first quadrant.
;;
;; (1) Find the range of $(a, b)$ such that the triangle $ABC$ is
;; contained in the square $D=\{(x, y)| 0\le x\le 1, 0\le y\le 1\}$.
;;
;; (2) When $(a, b)$ moves in the range found in (1), find the maximum
;; value of the area $S$ of the triangle $ABC$ and $(a, , , b)$ that
;; gives the maximum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (ab)
        (exists (a b A B C D)
          (&& (= ab (list-of a b))
        (= A (point a 0))
        (= B (point 0 b))
        (is-equilateral-triangle A B C)
        (on C (1st-quadrant))
        (< 0 a) (< 0 b)
        (= D (set-of-cfun (Lam x (PLam y (&& (<= 0 x)
                     (<= x 1)
                     (<= 0 y)
                     (<= y 1))))))
        (inside-of (triangle A B C)
             D)
        ))))

(def-directive
  p2
  (Find (ab_opt)
        (exists (a b A B C D S_max)
          (&& (= ab_opt (list-of a b))
        (= S_max (area-of (triangle A B C)))
        (= A (point a 0))
        (= B (point 0 b))
        (is-equilateral-triangle A B C)
        (on C (1st-quadrant))
        (= D (shape-of-cpfun (PLam p (&& (<= 0 (x-coord p))
                 (<= (x-coord p) 1)
                 (<= 0 (y-coord p))
                 (<= (y-coord p) 1)))))
        (inside-of (triangle A B C)
                                     D)
        (maximum (set-by-def (PLam S (exists (a2 b2 A2 B2 C2)
                     (&& (= S (area-of (triangle A2 B2 C2)))
                   (= A2 (point a2 0))
                   (= B2 (point 0 b2))
                   (is-equilateral-triangle A2 B2 C2)
                   (on C2 (1st-quadrant))
                   (inside-of (triangle A2 B2 C2) D)))))
           S_max)))))

(def-answer p1 (PLam ab (exists (a b) (&& (= ab (list-of a b))
            (< 0 a)
            (<= a 1)
            (< 0 b)
            (<= b 1)
            (<= (+ (/ a 2)
             (/ (* (sqrt 3) b)
                2))
                1)
            (<= (+ (/ (* (sqrt 3) a)
                2)
             (/ b 2))
                1)))))

(def-answer p2 (PLam ab (|| (= ab (list-of (- (sqrt 3) 1) (- (sqrt 3) 1)))
       (= ab (list-of 1 (- 2 (sqrt 3))))
       (= ab (list-of (- 2 (sqrt 3)) 1)))))

