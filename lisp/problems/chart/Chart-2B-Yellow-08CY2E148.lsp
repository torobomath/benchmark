;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E148
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Find (k)
    (exists (C l) (&&
      (= C (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (+ (+ (^ x 2) (^ y 2)) (* -4 x)) (* -6 y)) 9))))))
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* k x) 2))))))
      (intersect C l)
    ))
  )
)

(def-answer p (PLam k (<= (/ -3 4) k)))

