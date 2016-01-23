;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P121
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (circle) (&&
      (= answer (list-of x y))
      (circle-type circle)
      (= (point 2 1) (center-of circle))
      (tangent circle (x-axis))
      (on (point x y) circle)
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (circle) (&&
      (= answer (list-of x y))
      (circle-type circle)
      (= (point -1 2) (center-of circle))
      (tangent circle (y-axis))
      (on (point x y) circle)
    ))
  )
)

(def-directive p3
  (Find (answer)
    (exists (circle) (&&
      (= answer (list-of x y))
      (circle-type circle)
      (tangent circle (x-axis))
      (tangent circle (y-axis))
      (on (point 2 4) circle)
      (on (point x y) circle)
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= 1 (+ (^ (- x 2) 2) (^ (- y 1) 2)))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= 1 (+ (^ (+ x 1) 2) (^ (- y 2) 2)))
)))

(def-answer p3 (PLam answer (&&
  (= answer (list-of x y))
  (||
    (= 4 (+ (^ (- x 2) 2) (^ (- y 2) 2)))
    (= 100 (+ (^ (- x 10) 2) (^ (- y 10) 2)))
  )
)))

