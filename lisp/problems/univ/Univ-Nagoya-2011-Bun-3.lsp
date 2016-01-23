;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2011, Humanities Course, Problem 3
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-15
;;
;; <PROBLEM-TEXT>
;; Consider the three points $O(0, 0)$, $A(1, 0)$, and $B(0, 1)$ on the
;; $x y$ plane.
;;
;; (1) Assume that $a > 0$. Find the locus of the point $P$ that
;; satisfies $OP : AP = 1 : a$.
;;
;; (2) Assume that $a > 1 > b > 0$. Find the condition that $a$ and $b$
;; must satisfy in order that there exists the point $P$ that satisfies
;; $OP : AP : BP = 1 : a : b$, and draw it on the $a b$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (C)
    (let* ((O (origin)) (A (point 1 0)) (B (point 0 1)))
        (&& (> a 0)
            (= C (shape-of-cpfun (PLam P (= (distance A P) (* (distance O P) a)))))
         )
     )))

(def-directive
  p2
  (Find (ab)
    (let* ((O (origin)) (A (point 1 0)) (B (point 0 1)))
        (exists (P a b) (&&
            (> a 1)
            (> 1 b)
            (> b 0)
            (= ab (list-of a b))
            (= (distance A P) (* (distance O P) a))
            (= (distance B P) (* (distance O P) b))
        ))
     )
  )
)

(def-directive
  p3
  (Draw (S)
    (let* ((O (origin)) (A (point 1 0)) (B (point 0 1)))
        (= S (set-of-cfun (Lam a (PLam b (exists (P) (&&
            (= (distance A P) (* (distance O P) a))
            (= (distance B P) (* (distance O P) b))
            (> a 1)
            (> 1 b)
            (> b 0)
        ))))))
     )
  )
)

(def-answer p1 (PLam C (||
    (&& (= a 1)
        (= C (shape-of-cpfun (PLam p (= (x-coord p) (/ 1 2)))))
     )
    (&& (< 0 a) (! (= a 1))
        (= C (set-of-cfun (Lam x (PLam y
            (= (+ (^ (+ x (/ 1 (- (^ a 2) 1))) 2) (^ y 2))
               (/ (^ a 2) (^ (- (^ a 2) 1) 2))
            )
        ))))
     )
)))

(def-answer p2 (PLam ab (exists (a b) (&&
    (= ab (list-of a b))
    (< 0 b)
    (< b 1)
    (< 1 a)
    (<= (sqrt 2) (+ a b))
    (<= (- a b) (sqrt 2))
))))

(def-answer p3 (set-of-cfun (Lam a (PLam b (&&
    (< 0 b)
    (< b 1)
    (< 1 a)
    (<= (sqrt 2) (+ a b))
    (<= (- a b) (sqrt 2))
)))))

