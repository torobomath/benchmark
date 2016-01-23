;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE120
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 3d)

(def-directive p1
  (Find (answer)
    (exists (A B C x y z)
      (&& (= A (point -3 0 4))
        (= B (point x y z))
        (= C (point 5 -1 2))
        (divide-internally (point -1 1 3) (seg A B) 1 2)
          (= answer (list-of x y z))
      )
    )
  )
)

(def-directive p2
  (Find (answer)
    (exists (A B C x y z)
      (&& (= A (point -3 0 4))
        (= B (point x y z))
        (= C (point 5 -1 2))
        (divide-externally (point -3 -6 4) (seg A B) 3 4)
          (= answer (list-of x y z))
      )
    )
  )
)

(def-directive p3
  (Find (answer)
    (exists (A B C x y z)
      (&& (= A (point -3 0 4))
        (= B (point x y z))
        (= C (point 5 -1 2))
        (is-center-of-gravity-of (point 1 1 3) (triangle A B C))
          (= answer (list-of x y z))
      )
    )
  )
)

(def-answer p1 (PLam answer (= answer (list-of 3 3 1))))

(def-answer p2 (PLam answer (= answer (list-of -3 2 4))))

(def-answer p3 (PLam answer (= answer (list-of 1 4 3))))

