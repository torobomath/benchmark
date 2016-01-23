;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR004
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (is-divisible-by m 5)
      (is-divisible-by m 8)
    ))))
  )
)

(def-directive p2
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (|| (is-divisible-by m 5)
        (is-divisible-by m 8)
      )
    ))))
  )
)

(def-directive p3
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (! (is-divisible-by m 5))
      (! (is-divisible-by m 8))
    ))))
  )
)

(def-directive p4
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-integer m)
      (<= 100 m) (<= m 200)
      (is-divisible-by m 5)
      (! (is-divisible-by m 8))
    ))))
  )
)

(def-answer p1 (PLam n (= n 3)))

(def-answer p2 (PLam n (= n 31)))

(def-answer p3 (PLam n (= n 70)))

(def-answer p4 (PLam n (= n 18)))

