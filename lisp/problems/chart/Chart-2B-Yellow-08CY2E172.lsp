;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E172
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (l F M P Q x y m) (&&
      (= l (set-of-cfun (Lam x (PLam y (= y (* m x))))))
      (= F (set-of-cfun (Lam x (PLam y (= y (+ (^ x 2) 1))))))
      (= M (midpoint-of P Q))
      (! (= P Q))
      (on P (intersection l F))
      (on Q (intersection l F))
      (= answer (list-of m x y))
      (= (point x y) M)
    ))
  )
)

(def-answer p (PLam answer (exists (m x y) (&&
  (= answer (list-of m x y))
  (= m (* 2 x))
  (= y (* 2 (^ x 2)))
  (|| (< x -1) (< 1 x))
))))

