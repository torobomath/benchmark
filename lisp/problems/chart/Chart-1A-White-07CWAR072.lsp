;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR072
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-25

(namespace 2d)

(def-directive p1
  (Show
    (! (exists (A B C) (&&
      (= 3 (distance A B))
      (= 6 (distance B C))
      (= 2 (distance C A))
      (is-triangle A B C)
    )))
  )
)

(def-directive p2
  (Show
    (exists (A B C) (&&
      (=  8 (distance A B))
      (= 10 (distance B C))
      (= 17 (distance C A))
      (is-triangle A B C)
    ))
  )
)

