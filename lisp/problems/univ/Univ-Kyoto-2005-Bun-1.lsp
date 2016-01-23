;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2005, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-28
;;
;; <PROBLEM-TEXT>
;; Let $L$ be the line segment connecting the origin and the point
;; $(1, 2)$ (including both ends) on the $xy$ plane. Draw the set of
;; pairs of real numbers $(a, b)$ such that the curve $y=x^2+a x+b$ has
;; common points with $L$, on the $ab$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (ab)
        (exists (L C a b)
                (&& (= L (seg (origin) (point 1 2)))
                    (= C (shape-of-cpfun (PLam p (= (y-coord p)
                                                    (+ (^ (x-coord p) 2)
                                                       (* a (x-coord p))
                                                       b)))))
                    (intersect C L)
                    (= ab (list-of a b))))))

(def-answer p (PLam ab (exists (a b) (&&
  (= ab (list-of a b))
  (||
    (&& (< 2 a) (<= (- 1 a) b) (<= b 0))
    (&& (<= 0 a) (<= a 1) (<= (* 4 b) (^ (- a 2) 2)) (>= b 0))
    (&& (<= 1 a) (<= a 2) (<= (* 4 b) (^ (- a 2) 2)) (>= b (- 1 a)))
    (&& (< a 0) (<= 0 b) (<= b (- 1 a)))
  )
))))

