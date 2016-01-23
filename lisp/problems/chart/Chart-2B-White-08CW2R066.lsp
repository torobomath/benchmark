;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2R066
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (l l0 P) (&&
      (= l (line (point 1 -3) P))
      (= l0 (line2d 6 3 5))
      (= answer (list-of x y))
      (! (= P (point 1 -3)))
      (on (point x y) l)
      (parallel l l0)
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (A B l P Q) (&&
      (= A (point 0 6))
      (= B (point 4 4))
      (= l (line P Q))
      (= answer (list-of x y))
      (! (= P Q))
      (on (point x y) l)
      (is-perp-bisector l (seg A B))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= 0 (+ (+ (* 2 x) y) 1))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= 0 (+ (+ (* 2 x) (- y)) 1))
)))

