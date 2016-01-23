;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R063
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 3 -2) (point 4 1)))
    )
  )
)

(def-directive p2
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 4 0) (point 0 3)))
    )
  )
)

(def-directive p3
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point -2 3) (point -2 -5)))
    )
  )
)

(def-directive p4
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point -3 2) (point 1 2)))
    )
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* 3 x) -11))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* (/ -3 4) x) 3))
)))

(def-answer p3 (PLam answer (&&
  (= answer (list-of x y))
  (= x -2)
)))

(def-answer p4 (PLam answer (&&
  (= answer (list-of x y))
  (= y 2)
)))

