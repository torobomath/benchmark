;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE014
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p
  (Show
    (forall (m n k) (->
      (&& (is-natural-number m)
        (is-natural-number n)
        (< m n)
        (is-natural-number k)
      )
      (! (= (.^ (int->real 2) (int->real k)) (seq.sum-from-to (seq.arith-seq (int->real 1) (int->real 1)) (seq.index m) (seq.index n))))
    ))
  )
)

