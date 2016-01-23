;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P104
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (on (point x y) (line (point -2 4) P))
        (is-slope-of -3 (line (point -2 4) P))
      ))
    )
  )
)

(def-directive p2
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (! (= P (point 5 6)))
        (on (point x y) (line (point 5 6) P))
        (parallel (line (point 5 6) P) (y-axis))
      ))
    )
  )
)

(def-directive p3
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (P) (&&
        (! (= P (point 8 -7)))
        (on (point x y) (line (point 8 -7) P))
        (perpendicular (line (point 8 -7) P) (y-axis))
      ))
    )
  )
)

(def-directive p4
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 3 -5) (point -7 2)))
    )
  )
)

(def-directive p5
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 2 3) (point -1 3)))
    )
  )
)

(def-directive p6
  (Find (answer)
    (&& (= answer (list-of x y))
      (on (point x y) (line (point 1 0) (point a -4)))
    )
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* -3 x) -2))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= 5 x)
)))

(def-answer p3 (PLam answer (&&
  (= answer (list-of x y))
  (= -7 y)
)))

(def-answer p4 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* (/ -7 10) x) (/ -29 10)))
)))

(def-answer p5 (PLam answer (&&
  (= answer (list-of x y))
  (= 3 y)
)))

(def-answer p6 (PLam answer (&&
  (= answer (list-of x y))
  (|| (&& (! (= a 1))
      (= y (+ (* (/ -4 (- a 1)) x) (/ 4 (- a 1))))
    )
    (&& (= 1 a)
      (= 1 x)
    )
  )
)))

