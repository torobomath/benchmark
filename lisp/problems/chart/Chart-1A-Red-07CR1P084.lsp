;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P084
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (x)
    (exists (y) (&&
      (.= y (.+ x (int->real 3)))
      (.= (.+ (.* x y) (int->real 42)) (.+ x (.* (int->real 10) y)))
    ))
  )
)

(def-directive p2
  (Find (n)
    (exists (x y) (&&
      (is-integer x) (<= 0 x) (<= x 9)
      (is-integer y) (< 0 y) (<= y 9)
      (= y (+ x 3))
      (= (+ (* x y) 42) (+ x (* 10 y)))
      (= n (+ x (* 10 y)))
    ))
  )
)

(def-answer p1 (PLam x (= (int->real 0) (.+ (.+ (.^ x (int->real 2)) (.* (int->real -8) x)) (int->real 12)))))

(def-answer p2 (PLam n (|| (= n 52) (= n 96))))

