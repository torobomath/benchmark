;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP127
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Show
    (forall (a b c d) (->
      (&& (is-integer a) (< 0 a)
        (is-integer b) (< 0 b)
        (is-integer c) (< 0 c)
        (is-integer d) (< 0 d)
        (= (+ (+ (^ a 2) (^ b 2)) (^ c 2)) (^ d 2))
        (! (is-divisible-by d 3))
      )
      (|| (&& (! (is-divisible-by a 3)) (is-divisible-by b 3) (is-divisible-by c 3))
        (&& (is-divisible-by a 3) (! (is-divisible-by b 3)) (is-divisible-by c 3))
        (&& (is-divisible-by a 3) (is-divisible-by b 3) (! (is-divisible-by c 3)))
      )
    ))
  )
)

