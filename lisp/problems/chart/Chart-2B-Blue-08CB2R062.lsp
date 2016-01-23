;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R062
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p11
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (on (point x y) (line (point -1 3) P))
        (is-slope-of -2 (line (point -1 3) P))
      ))
    )
  )
)

(def-directive p12
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (! (= (point 4 1) P))
        (on (point x y) (line (point 4 1) P))
        (perpendicular (line (point 4 1) P) (x-axis))
      ))
    )
  )
)

(def-directive p13
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (! (= (point 5 3) P))
        (on (point x y) (line (point 5 3) P))
        (parallel (line (point 5 3) P) (x-axis))
      ))
    )
  )
)

(def-directive p21
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 1 -2) (point -3 4)))
    )
  )
)

(def-directive p22
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point -5 7) (point 6 7)))
    )
  )
)

(def-directive p23
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point (/ 3 2) (/ -1 3)) (point (/ 3 2) -1)))
    )
  )
)

(def-directive p24
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point (/ 5 2) 0) (point 0 (/ -1 3))))
    )
  )
)

(def-answer p11 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* -2 x) 1))
)))

(def-answer p12 (PLam answer (&&
  (= answer (list-of x y))
  (= 4 x)
)))

(def-answer p13 (PLam answer (&&
  (= answer (list-of x y))
  (= 3 y)
)))

(def-answer p21 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* (/ -3 2) x) (/ -1 2)))
)))

(def-answer p22 (PLam answer (&&
  (= answer (list-of x y))
  (= 7 y)
)))

(def-answer p23 (PLam answer (&&
  (= answer (list-of x y))
  (= (/ 3 2) x)
)))

(def-answer p24 (PLam answer (&&
  (= answer (list-of x y))
  (= 5 (+ (* 2 x) (* -15 y)))
)))

