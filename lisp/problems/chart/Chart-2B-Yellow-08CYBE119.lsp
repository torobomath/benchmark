;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE119
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 3d)

(def-directive p1
  (Find (answer)
    (exists (O A B C b1 b2 b3 c1 c2 c3) (&&
      (= O (origin))
      (= A (point 1 0 0))
      (= B (point b1 b2 b3))
      (= C (point c1 c2 c3))
      (= answer (list-of b1 b2 b3 c1 c2 c3))
      (is-regular-tetrahedron O A B C)
      (= 1 (distance O A))
      (on B (xy-plane))
      (< 0 c1)
      (< 0 c2)
      (< 0 c3)
    ))
  )
)

(def-directive p2
  (Find (costheta)
    (exists (O A B C P Q) (&&
      (is-regular-tetrahedron O A B C)
      (= 1 (distance O A))
      (on P (line A B))
      (on Q (line B C))
      (is-angle-bisector (line O P) (angle A O B))
      (is-angle-bisector (line O Q) (angle B O C))
      (= costheta (cos-of-angle (angle-of-vectors (vec O P) (vec O Q))))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of
  (/ 1 2) (/ (sqrt 3) 2) 0 (/ 1 2)
  (/ (sqrt 3) 6) (/ (sqrt 6) 3)))))

(def-answer p2 (PLam costheta (= costheta (/ 5 6))))

