;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAR008
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 200)
      (is-divisible-by m 3)
      (is-divisible-by m 4)
    ))))
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 200)
      (|| (is-divisible-by m 3)
        (is-divisible-by m 4)
      )
    ))))
  )
)

(def-directive p3
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 200)
      (|| (is-divisible-by m 4)
        (is-divisible-by m 51)
      )
    ))))
  )
)

(def-directive p4
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 1 m) (<= m 200)
      (! (is-divisible-by m 3))
      (! (is-divisible-by m 4))
    ))))
  )
)

(def-answer p1 (PLam n (= n 16)))

(def-answer p2 (PLam n (= n 100)))

(def-answer p3 (PLam n (= n 53)))

(def-answer p4 (PLam n (= n 100)))

