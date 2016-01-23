;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR007
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m
      (exists (x y z) (&&
        (is-natural-number x)
        (is-natural-number y)
        (is-natural-number z)
        (= 6 (+ (+ x y) z))
        (= m (+ (+ (* 100 x) (* 10 y)) z))
      ))
    )))
  )
)

(def-answer p (PLam n (= n 10)))

