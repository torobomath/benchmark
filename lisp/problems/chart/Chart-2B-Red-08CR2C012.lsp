;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C012
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (+ (+ (^ x 2) (^ y 2)) (* -2 x)) (* 6 y)) -6))))))
  )
)

(def-answer p
    (circle (point 1 -3) 4))

