;; DOMAIN:    Enumerative Combinatorics
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CYAE050
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam answer
      (exists (x y z) (&&
        (= answer (list-of x y z))
        (is-integer x) (<= 0 x)
        (is-integer y) (<= 0 y)
        (is-integer z) (<= 0 z)
        (= 9 (+ (+ x y) z))
      ))
    )))
  )
)

(def-directive p2
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam answer
      (exists (x y z) (&&
        (= answer (list-of x y z))
        (is-integer x) (<= 0 x)
        (is-integer y) (<= 0 y)
        (is-integer z) (<= 0 z)
        (= 8 (+ (+ x y) z))
      ))
    )))
  )
)

(def-answer p1 (PLam n (= n 55)))

(def-answer p2 (PLam n (= n 21)))

