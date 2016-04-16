;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR017
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m
      (exists (x y) (&&
        (is-integer x) (<= 1 x) (<= x 5)
        (is-integer y) (<= 1 y) (<= y 5)
        (= m (+ (* 10 x) y))
      ))
    )))
  )
)

(def-directive p2
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam s (exists (S) (&&
      (= S (set-by-def (PLam s (member s (list-of 1 2 3)))))
      (is-subset-of s S)
    )))))
  )
)

(def-answer p1 (PLam n (= n 25)))

(def-answer p2 (PLam n (= n 8)))

