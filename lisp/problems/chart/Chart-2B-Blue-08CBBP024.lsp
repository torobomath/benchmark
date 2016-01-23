;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP024
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (x)
    (exists (O A B) (&&
      (= (vec2d 2 1) (vec O A))
      (= (vec2d x 1) (vec O B))
      (= (/ 1 (sqrt 2)) (cos-of-angle (angle-of-vectors (vec O A) (vec O B))))
    ))
  )
)

(def-directive p2
  (Find (x)
    (exists (H O A B) (&&
      (= H (foot-of-perpendicular-line-from-to B (line O A)))
      (= (vec2d 2 1) (vec O A))
      (= (vec2d x 1) (vec O B))
      (= (vec2d (/ -1 2) (/ -1 4)) (vec A H))
    ))
  )
)

(def-answer p1 (PLam x (= (/ 1 3) x)))

(def-answer p2 (PLam x (= (/ 11 8) x)))

