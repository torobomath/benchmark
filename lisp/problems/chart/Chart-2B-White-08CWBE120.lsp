;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBE120
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 3d)

(def-directive p1
  (Find (answer)
    (exists (a b c O A B C M N u v w) (&&
      (= a (vec O A))
      (= b (vec O B))
      (= c (vec O C))
      (= answer (list-of u v w))
      (is-regular-tetrahedron O A B C)
      (= 1 (distance O A))
      (on M (seg O A))
      (on N (seg B C))
      (= (radius (vec O M)) x)
      (= (radius (vec B N)) y)
      (= (vec M N) (v+ (v+ (sv* u a) (sv* v b))  (sv* w c)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (a b c O A B C M N min) (&&
      (= a (vec O A))
      (= b (vec O B))
      (= c (vec O C))
      (= answer (list-of x y))
      (is-regular-tetrahedron O A B C)
      (= 1 (distance O A))
      (on M (seg O A))
      (on N (seg B C))
      (= (radius (vec O M)) x)
      (= (radius (vec B N)) y)
      (= min (radius (vec M N)))
      (minimum
        (set-by-def (PLam v (exists (M0 N0) (&&
          (on M0 (seg O A))
          (on N0 (seg B C))
          (= v (radius (vec M0 N0)))
        ))))
        min
      )
    ))
  )
)

(def-directive p3
  (Find (cos)
    (exists (a b c O A B C M N min) (&&
      (= a (vec O A))
      (= b (vec O B))
      (= c (vec O C))
      (is-regular-tetrahedron O A B C)
      (= 1 (distance O A))
      (on M (seg O A))
      (on N (seg B C))
      (= min (radius (vec M N)))
      (minimum
        (set-by-def (PLam v (exists (M0 N0) (&&
          (on M0 (seg O A))
          (on N0 (seg B C))
          (= v (radius (vec M0 N0)))
        ))))
        min
      )
      (= cos (cos-of-angle (angle-of-vectors (vec O C) (vec M N))))
    ))
  )
)

(def-answer p1 (PLam answer (exists (u v w) (&&
  (= answer (list-of u v w))
  (<= 0 x) (<= x 1)
  (<= 0 y) (<= y 1)
  (= u (- x))
  (= v (- 1 y))
  (= w y)
))))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= x (/ 1 2))
  (= y (/ 1 2))
)))

(def-answer p3 (PLam cos (= cos (/ 1 (sqrt 2)))))

