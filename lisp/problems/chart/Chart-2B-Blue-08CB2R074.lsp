;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R074
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p
  (Find (min)
    (exists (A B F) (&&
      (= A (point 0 -2))
      (= B (point 4 0))
      (= F (set-of-cfun (Lam x (PLam y (= y (^ x 2))))))
      (minimum
        (set-by-def (PLam v (exists (P) (&&
          (on P F)
          (= v (area-of (triangle A B P)))
        ))))
        min
      )
    ))
  )
)

(def-answer p (PLam min (= (/ 31 8) min)))

