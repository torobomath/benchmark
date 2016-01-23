;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP017
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (|| (is-divisible-by m 5)
        (is-divisible-by m 7)
      )
    ))))
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (! (is-divisible-by m 35))
    ))))
  )
)

(def-directive p3
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (! (is-divisible-by m 3))
      (! (is-divisible-by m 35))
    ))))
  )
)

(def-answer p1 (PLam n (= n 32)))

(def-answer p2 (PLam n (= n 98)))

(def-answer p3 (PLam n (= n 66)))

