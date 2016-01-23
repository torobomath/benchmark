;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBR065
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 3d)

(def-directive p11
  (Find (answer)
    (exists (A) (&&
      (= A (point 2 -1 3))
      (= answer (list-of x y z))
      (on (point x y z) (plane2 A (direction-vec (x-axis))))
    ))
  )
)

(def-directive p12
  (Find (answer)
    (exists (A) (&&
      (= A (point 2 -1 3))
      (= answer (list-of x y z))
      (on (point x y z) (plane2 A (direction-vec (y-axis))))
    ))
  )
)

(def-directive p13
  (Find (answer)
    (exists (A) (&&
      (= A (point 2 -1 3))
      (= answer (list-of x y z))
      (on (point x y z) (plane2 A (direction-vec (z-axis))))
    ))
  )
)

(def-directive p21
  (Find (answer)
    (exists (B v) (&&
      (= B (point 1 3 -2))
      (= answer (list-of x y z))
      (! (= v (zero-vector)))
      (parallel (plane2 B v) (xy-plane))
      (on (point x y z) (plane2 B v))
    ))
  )
)

(def-directive p22
  (Find (answer)
    (exists (B v) (&&
      (= B (point 1 3 -2))
      (= answer (list-of x y z))
      (! (= v (zero-vector)))
      (parallel (plane2 B v) (yz-plane))
      (on (point x y z) (plane2 B v))
    ))
  )
)

(def-directive p23
  (Find (answer)
    (exists (B v) (&&
      (= B (point 1 3 -2))
      (= answer (list-of x y z))
      (! (= v (zero-vector)))
      (parallel (plane2 B v) (zx-plane))
      (on (point x y z) (plane2 B v))
    ))
  )
)

(def-answer p11 (PLam answer (&& (= answer (list-of x y z)) (= x 2))))

(def-answer p12 (PLam answer (&& (= answer (list-of x y z)) (= y -1))))

(def-answer p13 (PLam answer (&& (= answer (list-of x y z)) (= z 3))))

(def-answer p21 (PLam answer (&& (= answer (list-of x y z)) (= z -2))))

(def-answer p22 (PLam answer (&& (= answer (list-of x y z)) (= x 1))))

(def-answer p23 (PLam answer (&& (= answer (list-of x y z)) (= y 3))))

