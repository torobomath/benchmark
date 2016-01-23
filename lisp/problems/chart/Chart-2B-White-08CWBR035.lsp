;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBR035
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (k)
    (exists (A l H n) (&&
      (= A (point 3 1))
      (= l (line2d 1 2 -3))
      (= H (foot-of-perpendicular-line-from-to A l))
      (= n (vec2d 1 2))
      (= (vec A H) (sv* k n))
    ))
  )
)

(def-directive p2
  (Find (d)
    (exists (A l H) (&&
      (= A (point 3 1))
      (= l (line2d 1 2 -3))
      (= H (foot-of-perpendicular-line-from-to A l))
      (= d (point-shape-distance A l))
    ))
  )
)

(def-answer p1 (PLam k (= k (/ -8 5))))

(def-answer p2 (PLam d (= d (/ (* 8 (sqrt 5)) 5))))

