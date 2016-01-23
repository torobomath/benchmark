;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE021
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (n)
    (is-cardinality-of n (set-by-def (PLam m (&&
      (is-natural-number m)
      (<= 10 m) (< m 100)
      (is-even-number (* (div m 10) (mod m 10)))
    ))))
  )
)

(def-answer p (PLam n (= n 65)))

