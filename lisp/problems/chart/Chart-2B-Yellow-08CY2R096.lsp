;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R096
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (k)
    (exists (l) (&&
      (= l (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (* (* 2 k) x) y) (^ k 2)))))))
      (on (point 1 -8) l)
    ))
  )
)

(def-directive p2
  (Draw (Q)
    (exists (k l D) (&&
      (= l (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (* (* 2 k) x) y) (^ k 2)))))))
      (= D (shape-of-cpfun (PLam P (on P l))))
      (on Q D)
    ))
  )
)

(def-answer p1 (PLam k (|| (= k 2) (= k -4))))

(def-answer p2 (set-of-cfun (Lam x (PLam y (<= y (^ x 2))))))

