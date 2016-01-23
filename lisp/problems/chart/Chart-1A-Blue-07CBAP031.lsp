;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP031
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Find (n) (&&
    (= 0 (+ (+ (* 6 (combination n 3)) (* (- n) (permutation n 2))) 144))
    (>= n 3)
  ))
)

(def-answer p (PLam n (= n 9)))

