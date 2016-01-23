;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P167
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Draw (D)
    (exists (S) (&&
      (= S (set-of-cfun (Lam x (PLam y (&& (<= (+ (^ x 2) (^ y 2)) 8) (<= 0 y))))))
      (= D (set-of-cfun (Lam x (PLam y (exists (p q) (&&
        (on (point p q) S)
        (= x (+ p q))
        (= y (* p q))
      ))))))
    ))
  )
)

(def-answer
  p
  (set-of-cfun (Lam x (PLam y
       (&& (<= (- (* (/ 1 2) (^ x 2)) 4) y)
           (<= y (* (/ 1 4) (^ x 2)))
           (|| (<= 0 x)
               (<= y 0)))))))

