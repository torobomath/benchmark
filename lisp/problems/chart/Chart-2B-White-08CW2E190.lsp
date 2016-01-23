;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E190
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (O l Q) (&&
      (= O (origin))
      (= l (set-of-cfun (Lam x (PLam y (= 5 (+ (* 2 x) (* 3 y)))))))
      (= answer (list-of x y))
      (on Q l)
      (= (point x y) (internally-dividing-point O Q (/ 2 3)))
    ))
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (= 10 (+ (* 6 x) (* 9 y)))
)))

