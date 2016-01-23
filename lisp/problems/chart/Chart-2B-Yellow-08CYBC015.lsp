;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBC015
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Show
    (forall (O A B P a b) (->
      (&&
        (= a (vec O A))
        (= b (vec O B))
        (= (vec O P) (sv* (/ 1 5) (v+ (sv* 3 a) (sv* 2 b))))
      )
      (on P (line A B))
    ))
  )
)

