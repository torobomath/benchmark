;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBE006
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Show
    (forall (a b c l m n) (->
      (&&
        (= l (outer-prod a b))
        (= m (outer-prod b c))
        (= n (outer-prod c a))
      )
      (= (zero-vector) (v+ (sv* l c) (v+ (sv* m a) (sv* n b))))
    ))
  )
)

(def-directive p2
  (Show
    (forall (a b c d l m n) (->
      (&& (< 0 l)
        (< 0 m)
        (< 0 n)
        (= l (outer-prod a b))
        (= m (outer-prod b c))
        (= n (outer-prod c a))
      )
      (exists (r s t) (&&
        (<= 0 r)
        (<= 0 s)
        (<= 0 t)
        (= d (v+ (sv* r a) (v+ (sv* s b) (sv* t c))))
      ))
    ))
  )
)

