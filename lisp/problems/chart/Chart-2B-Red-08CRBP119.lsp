;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP119
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 200 m) (<= m 500)
      (is-divisible-by (- m 5) 7)
      (is-divisible-by (- m 11) 13)
    ))))
  )
)

(def-directive p2
  (Find (s)
    (= s (sum (set-to-list (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 200 m) (<= m 500)
      (is-divisible-by (- m 5) 7)
      (is-divisible-by (- m 11) 13)
    ))))))
  )
)

(def-answer p1 (PLam n (= n 3)))

(def-answer p2 (PLam s (= s 1086)))

