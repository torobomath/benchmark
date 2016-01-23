;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2R085
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (A B P) (&&
      (= A (point -3 1))
      (= B (point 3 -2))
      (= P (point x y))
      (= answer (list-of x y))
      (= (distance A P) (distance B P))
    ))
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (= 0 (+ (+ (* 4 x) (* -2 y)) -1))
)))

