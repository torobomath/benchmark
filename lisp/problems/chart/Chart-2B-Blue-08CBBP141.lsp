;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP141
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 3d)

(def-directive p1
  (Find (S)
    (exists (A B C) (&&
      (= A (point 2 -2 -1))
      (= B (point -1 2 2))
      (= C (point -1 -2 0))
      (= S (area-of (triangle A B C)))
    ))
  )
)

(def-directive p2
  (Find (d)
    (exists (O A B C) (&&
      (= O (origin))
      (= A (point 2 -2 -1))
      (= B (point -1 2 2))
      (= C (point -1 -2 0))
      (= d (point-shape-distance O (extend-to-plane (triangle A B C))))
    ))
  )
)

(def-directive p3
  (Find (V)
    (exists (O A B C) (&&
      (= O (origin))
      (= A (point 2 -2 -1))
      (= B (point -1 2 2))
      (= C (point -1 -2 0))
      (= V (volume-of (tetrahedron O A B C)))
    ))
  )
)

(def-answer p1 (PLam S (= S 7)))

(def-answer p2 (PLam d (= d (/ 4 7))))

(def-answer p3 (PLam V (= V (/ 4 3))))

