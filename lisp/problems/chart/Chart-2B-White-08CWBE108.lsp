;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B White Book, Problem 08CWBE108
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 3d)

(def-directive p11
  (Find (answer)
    (&& (= answer (list-of x y z))
      (exists (v) (&&
        (! (= v (zero-vector)))
        (parallel (plane2 (point 3 -2 5) v) (yz-plane))
        (on (point x y z) (plane2 (point 3 -2 5) v))
      ))
    )
  )
)

(def-directive p12
  (Find (answer)
    (&& (= answer (list-of x y z))
      (exists (v) (&&
        (! (= v (zero-vector)))
        (parallel (plane2 (point 3 -2 5) v) (zx-plane))
        (on (point x y z) (plane2 (point 3 -2 5) v))
      ))
    )
  )
)

(def-directive p13
  (Find (answer)
    (&& (= answer (list-of x y z))
      (exists (v) (&&
        (! (= v (zero-vector)))
        (parallel (plane2 (point 3 -2 5) v) (xy-plane))
        (on (point x y z) (plane2 (point 3 -2 5) v))
      ))
    )
  )
)

(def-directive p21
  (Find (answer)
    (&& (= answer (list-of x y z))
      (on (point x y z) (plane2 (point 3 -2 5) (direction-vec (x-axis))))
    )
  )
)

(def-directive p22
  (Find (answer)
    (&& (= answer (list-of x y z))
      (on (point x y z) (plane2 (point 3 -2 5) (direction-vec (y-axis))))
    )
  )
)

(def-directive p23
  (Find (answer)
    (&& (= answer (list-of x y z))
      (on (point x y z) (plane2 (point 3 -2 5) (direction-vec (z-axis))))
    )
  )
)

(def-answer p11 (PLam answer (&& (= answer (list-of x y z)) (= x 3))))

(def-answer p12 (PLam answer (&& (= answer (list-of x y z)) (= y -2))))

(def-answer p13 (PLam answer (&& (= answer (list-of x y z)) (= z 5))))

(def-answer p21 (PLam answer (&& (= answer (list-of x y z)) (= x 3))))

(def-answer p22 (PLam answer (&& (= answer (list-of x y z)) (= y -2))))

(def-answer p23 (PLam answer (&& (= answer (list-of x y z)) (= z 5))))

