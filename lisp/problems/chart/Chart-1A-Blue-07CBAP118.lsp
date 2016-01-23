;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP118
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Show
    (forall (a b) (->
      (&& (is-natural-number a)
        (is-natural-number b)
        (is-odd-number a)
        (is-odd-number b)
      )
      (is-even-number (+ (^ a 2) (^ b 2)))
    ))
  )
)

(def-directive p2
  (Show
    (! (forall (a b) (->
      (&& (is-natural-number a)
        (is-natural-number b)
        (is-even-number (+ (^ a 2) (^ b 2)))
      )
      (&& (is-odd-number a)
        (is-odd-number b)
      )
    )))
  )
)

(def-directive p3
  (Show
    (forall (a b) (->
      (&& (is-natural-number a)
        (is-natural-number b)
        (is-odd-number (+ (^ a 2) (^ b 2)))
      )
      (|| (is-odd-number a)
        (is-odd-number b)
      )
    ))
  )
)

