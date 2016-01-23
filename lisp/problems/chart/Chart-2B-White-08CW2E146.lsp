;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E146
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (A B C x1 x2 x3 y1 y2 y3) (&&
      (= A (point 4 7))
      (= B (point 1 2))
      (= C (point 4 3))
      (= answer (list-of x1 y1 x2 y2 x3 y3))
      (on (point x1 y1) (line A B))
      (on (point x2 y2) (line B C))
      (on (point x3 y3) (line C A))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (A B C G) (&&
      (= A (point 4 7))
      (= B (point 1 2))
      (= C (point 4 3))
      (= answer (list-of x y))
      (is-center-of-gravity-of G (triangle A B C))
      (on (point x y) (line A G))
    ))
  )
)

(def-answer p1 (PLam answer (exists (x10 x20 x30 y10 y20 y30) (&&
  (= y10 (+ (* (/ 5 3) x10) (/ 1 3)))
  (= y20 (+ (* (/ 1 3) x20) (/ 5 3)))
  (= x30 4)
  (= answer (list-of x10 y10 x20 y20 x30 y30))
))))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (* 3 x) -5))
)))

