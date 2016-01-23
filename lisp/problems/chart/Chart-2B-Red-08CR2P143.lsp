;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P143
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (g F P) (&&
      (= g (line (point 0 (- p)) (point 1 (- p))))
      (= F (point 0 p))
      (= P (point x y))
      (< 0 p)
      (= answer (list-of x y))
      (= (point-shape-distance^2 P g) (distance^2 P F))
    ))
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (< 0 p)
  (= y (/ (^ x 2) (* 4 p)))
)))

