;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAP145
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p1
  (Show
    (forall (a b c d) (->
      (&& (is-integer a)
        (is-integer b)
        (is-integer c)
        (is-integer d)
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

(def-directive p2
  (Show
    (forall (a b c d) (->
      (&& (is-integer a)
        (is-integer b)
        (is-integer c)
        (is-integer d)
        (= (+ (+ (^ a 2) (^ b 2)) (^ c 2)) (^ d 2))
        (! (is-divisible-by d 6))
      )
      (|| (is-divisible-by a 6)
        (is-divisible-by b 6)
        (is-divisible-by c 6)
      )
    ))
  )
)

