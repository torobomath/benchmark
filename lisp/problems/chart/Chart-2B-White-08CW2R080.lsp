;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2R080
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (C P) (&&
        (circle-type C)
        (! (= P (point 4 2)))
        (= C (set-of-cfun (Lam x (PLam y (= 25 (+ (^ (- x 1) 2) (^ (+ y 2) 2)))))))
        (tangent C (line (point 4 2) P) (point 4 2))
        (on (point x y) (line (point 4 2) P))
      ))
    )
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* (/ -3 4) x) 5))
)))

