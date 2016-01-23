;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE042
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-08

(namespace int)

(def-directive p
  (Show
    (forall (m k) (->
      (&& (is-natural-number m)
        (is-natural-number k)
      )
      (exists (l h) (&&
        (is-natural-number l)
        (is-natural-number h)
        (< l h)
        (= (int->real (* m (+ (* 2 k) 1))) (seq.sum-from-to (seq.arith-seq (int->real 1) (int->real 1)) (seq.index l) (seq.index h)))
      ))
    ))
  )
)

