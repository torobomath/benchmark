;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R046
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (exists (x y) (&&
      (= answer (list-of x y))
      (is-natural-number x)
      (is-natural-number y)
      (= 33 (+ (* 2 x) (* 3 y)))
    ))
  )
)

(def-directive p2
  (Find (n)
    (.is-cardinality-of n (set-by-def (PLam triple
      (&& (is-natural-number (fst-of-3 triple))
        (is-natural-number (snd-of-3 triple))
        (is-natural-number (third-of-3 triple))
        (= 10 (+ (+ (fst-of-3 triple) (* 3 (snd-of-3 triple))) (third-of-3 triple)))
      )
    )))
  )
)

(def-answer p1 (PLam answer (||
  (= answer (list-of 15 1))
  (= answer (list-of 12 3))
  (= answer (list-of 9 5))
  (= answer (list-of 6 7))
  (= answer (list-of 3 9))
)))

(def-answer p2 (PLam n (= n 9)))

