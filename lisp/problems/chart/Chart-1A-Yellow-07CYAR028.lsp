;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAR028
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam triple
      (exists (x y z) (&&
        (= triple (list-of x y z))
        (is-integer x) (<= 0 x)
        (is-integer y) (<= 0 y)
        (is-integer z) (<= 0 z)
        (= 7 (+ (+ x y) z))
      ))
    )))
  )
)

(def-answer p (PLam n (= n 36)))

