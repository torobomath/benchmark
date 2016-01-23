;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBR026
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p
  (Show
    (forall (L M N A B C) (->
      (&&
        (= L (internally-dividing-point B C (/ 3 5)))
        (= M (internally-dividing-point C A (/ 3 5)))
        (= N (internally-dividing-point A B (/ 3 5)))
        (is-right (angle C A B))
        (= (distance A B) (distance C A))
      )
      (perpendicular (line A L) (line M N))
    ))
  )
)

