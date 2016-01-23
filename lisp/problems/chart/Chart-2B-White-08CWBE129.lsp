;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBE129
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 3d)

(def-directive p1
  (Find (costheta)
    (exists (O A B M C) (&&
      (= O (origin))
      (= A (point (/ 1 2) (/ (sqrt 3) 2) 0))
      (= B (point (/ -1 2) (/ (sqrt 3) 2) 0))
      (= M (midpoint-of A B))
      (< 0 (z-coord C))
      (is-regular-tetrahedron O A B C)
      (= costheta (cos-of-angle (angle C O M)))
    ))
  )
)

(def-directive p2
  (Find (C)
    (exists (O A B) (&&
      (= O (origin))
      (= A (point (/ 1 2) (/ (sqrt 3) 2) 0))
      (= B (point (/ -1 2) (/ (sqrt 3) 2) 0))
      (< 0 (z-coord C))
      (is-regular-tetrahedron O A B C)
    ))
  )
)

(def-directive p3
  (Find (answer)
    (exists (O A B C sphere x y z r) (&&
      (= O (origin))
      (= A (point (/ 1 2) (/ (sqrt 3) 2) 0))
      (= B (point (/ -1 2) (/ (sqrt 3) 2) 0))
      (< 0 (z-coord C))
      (is-regular-tetrahedron O A B C)
      (= answer (list-of x y z r))
      (sphere-type sphere)
      (is-inscribed-in (tetrahedron O A B C) sphere)
      (= (point x y z) (center-of sphere))
      (= r (radius-of sphere))
    ))
  )
)

(def-answer p1 (PLam costheta (= costheta (/ (sqrt 3) 3))))

(def-answer p2 (PLam C (= C (point 0 (/ (sqrt 3) 3) (/ (sqrt 6) 3)))))

(def-answer p3 (PLam answer (= answer (list-of 0 (/ (sqrt 3) 3) (/ (sqrt 6) 12) (/ (sqrt 6) 4)))))

