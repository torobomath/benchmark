;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E151
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (m)
    (exists (l C C0) (&&
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* m x) 1))))))
      (= C (set-of-cfun (Lam x (PLam y (= 0 (+ (^ x 2) (+ (^ y 2) (+ (* -2 x) (+ (* -4 y) 4)))))))))
      (= C0 C)
      (circle-type C0)
      (on (center-of C0) l)
    ))
  )
)

(def-directive p2
  (Find (m)
    (exists (l C P Q) (&&
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* m x) 1))))))
      (= C (set-of-cfun (Lam x (PLam y (= 0 (+ (^ x 2) (+ (^ y 2) (+ (* -2 x) (+ (* -4 y) 4)))))))))
      (! (= P Q))
      (on P (intersection l C))
      (on Q (intersection l C))
      (= (sqrt 2) (distance P Q))
    ))
  )
)

(def-answer p1 (PLam m (= m 1)))

(def-answer p2 (PLam m (|| (= m (+ 2 (sqrt 3))) (= m (- 2 (sqrt 3))))))

