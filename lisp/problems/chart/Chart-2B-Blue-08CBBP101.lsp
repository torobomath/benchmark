;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP101
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 3d)

(def-directive p1
  (Find (answer)
    (forall (x y z A B) (->
      (&&
        (= A (point -1 1 1))
        (= B (point 1 -1 1))
        (= (vec3d x y z) (vec A B))
      )
      (= answer (list-of x y z (radius (vec A B))))
    ))
  )
)

(def-directive p2
  (Find (e)
    (exists (A B C) (&&
      (= A (point -1 1 1))
      (= B (point 1 -1 1))
      (= C (point 1 1 -1))
      (is-point e)
      (= 0 (inner-prod (vec (origin) e) (vec A B)))
      (= 0 (inner-prod (vec (origin) e) (vec A C)))
      (= 1 (radius^2 (vec (origin) e)))
    ))
  )
)

(def-directive p3
  (Find (D)
    (exists (A B C) (&&
      (= A (point -1 1 1))
      (= B (point 1 -1 1))
      (= C (point 1 1 -1))
      (is-parallelogram A B C D)
    ))
  )
)

(def-directive p4
  (Show
    (exists (A B C) (&&
      (= A (point -1 1 1))
      (= B (point 1 -1 1))
      (= C (point 1 1 -1))
      (is-equilateral-triangle A B C)
    ))
  )
)

(def-directive p5
  (Find (E)
    (exists (A B C) (&&
      (= A (point -1 1 1))
      (= B (point 1 -1 1))
      (= C (point 1 1 -1))
      (is-regular-tetrahedron A B C E)
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of 2 -2 0 (* 2 (sqrt 2))))
)))

(def-answer p2 (PLam e (||
  (= e (vec->point (sv* (/ 1 (sqrt 3)) (vec3d 1 1 1))))
  (= e (vec->point (sv* (/ -1 (sqrt 3)) (vec3d 1 1 1))))
)))

(def-answer p3 (PLam D (= D (point -1 3 -1))))

(def-answer p5 (PLam E (||
  (= E (point -1 -1 -1))
  (= E (point (/ 5 3) (/ 5 3) (/ 5 3)))
)))

