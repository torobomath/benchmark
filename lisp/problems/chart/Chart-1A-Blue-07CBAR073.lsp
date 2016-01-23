;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAR073
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (answer)
    (&& (is-prime n) (< 2 n)
      (is-integer a)
      (is-integer b)
      (<= 0 b) (<= 0 a)
      (= n (- (^ a 2) (^ b 2)))
      (= answer (list-of a b))
    )
  )
)

(def-directive p2
  (Show
    (forall (n) (->
      (&& (is-odd-number n)
        (! (is-prime n))
        (<= 2 n)
      )
      (exists (a b) (&&
        (is-integer a)
        (is-integer b)
        (<= 0 b) (<= 0 a)
        (= n (- (^ a 2) (^ b 2)))
        (! (= a (div (+ n 1) 2)))
        (! (= b (div (- n 1) 2)))
      ))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of a b))
  (= a (div (+ n 1) 2))
  (= b (div (- n 1) 2))
)))

