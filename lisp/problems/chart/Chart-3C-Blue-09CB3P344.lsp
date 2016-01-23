;; DOMAIN:    Integration and its Applications
;; THEORY:    PA+trans
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P344
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Show
    (exists (f1 f2) (&&
      (= f1 (Lam x (exp x)))
      (= f2 (Lam x (- (exp (* n x)) 1)))
      (forall (n) (->
        (<= 2 n)
        (exists (x) (&&
          (<= 0 x)
          (= (LamApp f1 x) (LamApp f2 x))
          (forall (x0) (->
            (&& (<= 0 x0)
              (= (LamApp f1 x0) (LamApp f2 x0))
            )
            (= x x0)
          ))
        ))
      ))
    ))
  )
)

