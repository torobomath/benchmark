;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P134
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (circle (point 3 -2) 4))
    )
  )
)

(def-directive p2
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (circle) (&&
        (circle-type circle)
        (= (point 0 3) (center-of circle))
        (on (point -1 6) circle)
        (on (point x y) circle)
      )
    ))
  )
)

(def-directive p3
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (circle) (&&
        (circle-type circle)
        (= (point -2 4) (center-of circle))
        (tangent (x-axis) circle)
        (on (point x y) circle)
      ))
    )
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= 16 (+ (^ (- x 3) 2) (^ (+ y 2) 2)))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= 10 (+ (^ x 2) (^ (- y 3) 2)))
)))

(def-answer p3 (PLam answer (&&
  (= answer (list-of x y))
  (= 16 (+ (^ (+ x 2) 2) (^ (- y 4) 2)))
)))

