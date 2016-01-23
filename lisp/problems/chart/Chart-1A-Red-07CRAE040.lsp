;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAE040
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-07

(namespace int)

(def-directive p1
  (Find (min)
    (minimum
      (set-by-def (PLam v (exists (a b) (&&
        (is-integer a)
        (is-integer b)
        (< 0 a) (<= a b)
        (<= 50 (* a b))
        (= v b)
      ))))
      (Lam lhs (PLam rhs (int.< lhs rhs)))
      min
    )
  )
)

(def-directive p21
  (Find (min)
    (&& (is-integer min) (< 0 min)
      (minimum
        (set-by-def (PLam k (&&
          (forall (a b c) (->
            (&& (is-integer a) (< 0 a)
              (is-integer b) (< 0 b)
              (is-integer c) (< 0 c)
              (<= k (* (* a b) c))
            )
            (|| (<= 10 a)
              (<= 10 b)
              (<= 10 c)
            )
          ))
          (forall (a b c) (->
            (&& (is-integer a) (< 0 a)
              (is-integer b) (< 0 b)
              (is-integer c) (< 0 c)
              (<= (* (* a b) c) k)
            )
            (|| (<= a 10)
              (<= b 10)
              (<= c 10)
            )
          ))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        min
      )
    )
  )
)

(def-directive p22
  (Find (max)
    (&& (is-integer min) (< 0 min)
      (maximum
        (set-by-def (PLam k (&&
          (forall (a b c) (->
            (&& (is-integer a) (< 0 a)
              (is-integer b) (< 0 b)
              (is-integer c) (< 0 c)
              (<= k (* (* a b) c))
            )
            (|| (<= 10 a)
              (<= 10 b)
              (<= 10 c)
            )
          ))
          (forall (a b c) (->
            (&& (is-integer a) (< 0 a)
              (is-integer b) (< 0 b)
              (is-integer c) (< 0 c)
              (<= (* (* a b) c) k)
            )
            (|| (<= a 10)
              (<= b 10)
              (<= c 10)
            )
          ))
        )))
        (Lam lhs (PLam rhs (int.< lhs rhs)))
        max
      )
    )
  )
)

(def-answer p1 (PLam min (= min 8)))

(def-answer p21 (PLam min (= min 730)))

(def-answer p22 (PLam max (= max 1330)))

