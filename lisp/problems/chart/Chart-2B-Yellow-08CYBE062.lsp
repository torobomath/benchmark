;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE062
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (s)
    (exists (D E F a b A B C) (&&
      (= D (midpoint-of A B))
      (= E (midpoint-of B C))
      (= F (internally-dividing-point A C s))
      (= a (vec2d a1 a2))
      (= b (vec2d b1 b2))
      (< 0 s) (< s 1)
      (is-triangle A B C)
      (is-acute (angle B A C))
      (= a (vec A B))
      (= b (vec A C))
      (perpendicular (line D F) (line A E))
    ))
  )
)

(def-directive p2
  (Show
    (forall (s A B C P D E F) (->
      (&&
        (= D (midpoint-of A B))
        (= E (midpoint-of B C))
        (= F (internally-dividing-point A C s))
        (< 0 s) (< s 1)
        (is-triangle A B C)
        (is-acute (angle B A C))
        (intersect (line D F) (line A E) P)
        (divide-internally P (seg A E) 3 2)
      )
      (= (zero-vector) (v+ (v+ (sv* 4 (vec P A)) (sv* 3 (vec P B))) (sv* 3 (vec P C))))
    ))
  )
)

(def-answer p1 (PLam s
  (exists (a b) (&&
    (= a (vec2d a1 a2))
    (= b (vec2d b1 b2))
    (= s (/ (+ (radius^2 a) (inner-prod a b)) (* 2 (+ (radius^2 b) (inner-prod a b)))))
  ))
))

