;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R090
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (l F P A B m) (&&
      (= l (set-of-cfun (Lam x (PLam y (= y (* m x))))))
      (= F (set-of-cfun (Lam x (PLam y (= y (^ (- x 1) 2))))))
      (= P (midpoint-of A B))
      (= answer (list-of x y))
      (! (= A B))
      (on A (intersection l F))
      (on B (intersection l F))
      (= (point x y) P)
    ))
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (|| (< x -1) (< 1 x))
  (= y (+ (* 2 (^ x 2)) (* -2 x)))
)))

