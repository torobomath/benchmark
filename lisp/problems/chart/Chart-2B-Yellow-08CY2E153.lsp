;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E153
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (C1 C2 P Q C) (&&
      (= C1 (set-of-cfun (Lam x (PLam y (= 8 (+ (^ (- x 2) 2) (^ (+ y 1) 2)))))))
      (= C2 (set-of-cfun (Lam x (PLam y (= 10 (+  (^ (- x 1) 2) (^ (- y 2) 2)))))))
      (|| (< (x-coord P) (x-coord Q))
        (&& (= (x-coord P) (x-coord Q))
          (< (y-coord P) (y-coord Q))
        )
      )
      (on P (intersection C1 C2))
      (on Q (intersection C1 C2))
      (circle-type C)
      (on P C)
      (on Q C)
      (on (origin) C)
      (= answer (list-of (x-coord P) (y-coord P) (x-coord Q) (y-coord Q) x y))
      (on (point x y) C)
    ))
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of (/ -4 5) (/ -3 5) 4 1 x y))
  (= 0 (+ (+ (+ (^ x 2) (^ y 2)) (* -7 x)) (* 11 y)))
)))

