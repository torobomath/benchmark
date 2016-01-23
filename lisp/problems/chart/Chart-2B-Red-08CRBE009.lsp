;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBE009
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (r)
    (&&
      (< 0 r) (< r 1)
      (forall (P Q A B C R M) (->
        (&& (is-triangle A B C)
          (intersect (line B Q) (line C P) R)
          (divide-externally M (seg R P) 1 r)
          (= P (internally-dividing-point A B (/ 1 3)))
          (= Q (internally-dividing-point A C (/ 2 3)))
        ) (vec-parallel (vec A M) (vec B C))
      ))
    )
  )
)

(def-answer p (PLam r (= r (/ 7 15))))

