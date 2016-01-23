;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR063
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Show
    (forall (a b) (->
      (&& (is-integer a)
        (is-integer b)
        (exists (c) (&&
          (is-integer c)
          (= (+ (^ a 2) (^ b 2)) (^ c 2))
        ))
      )
      (|| (is-even-number a)
        (is-even-number b)
      )
    ))
  )
)

