;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E191
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (< (- 2 (* 3 x)) y)))))
  )
)

(def-directive p2
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (<= 0 (+ (+ (* 3 x) (- y)) -5))))))
  )
)

(def-directive p3
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (< y 3)))))
  )
)

(def-directive p4
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (<= -1 x)))))
  )
)

(def-answer p1
  (set-of-cfun (Lam x (PLam y (> y (- 2 (* 3 x)))))))

(def-answer p2
  (set-of-cfun (Lam x (PLam y (>= (- (- (* 3 x) y) 5) 0)))))

(def-answer p3
  (set-of-cfun (Lam x (PLam y (< y 3)))))

(def-answer p4
  (set-of-cfun (Lam x (PLam y (>= x -1)))))

