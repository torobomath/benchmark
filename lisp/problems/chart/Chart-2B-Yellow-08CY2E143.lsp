;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E143
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Find (min)
    (exists (A B F P) (&&
      (= A (point -2 1))
      (= B (point 2 -1))
      (= F (set-of-cfun (Lam x (PLam y (= y (+ (^ x 2) 1))))))
      (on P F)
      (= min (area-of (triangle A B P)))
      (minimum
        (set-by-def (PLam v (exists (P0) (&&
          (on P0 F)
          (= v (area-of (triangle A B P0)))
        ))))
        min
      )
    ))
  )
)

(def-answer p (PLam min (= min (/ 15 8))))

