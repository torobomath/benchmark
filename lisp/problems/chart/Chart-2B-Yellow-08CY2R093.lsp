;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R093
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (D1 D2 D3 D4 f p x y max) (&&
      (= D1 (set-of-cfun (Lam x (PLam y (<= 0 y)))))
      (= D2 (set-of-cfun (Lam x (PLam y (<= y (+ x 1))))))
      (= D3 (set-of-cfun (Lam x (PLam y (<= 3 (+ (* 2 x) (* 3 y)))))))
      (= D4 (set-of-cfun (Lam x (PLam y (<= (+ (* 3 x) y) 9)))))
      (= f (Lam P (+ (x-coord P) (* 3 (y-coord P)))))
      (= p (point x y))
      (on p (intersection (list-of D1 D2 D3 D4)))
      (= max (LamApp f p))
      (maximum
        (set-by-def (PLam v (exists (p0) (&&
          (on p0 (intersection (list-of D1 D2 D3 D4)))
          (= v (LamApp f p0))
        ))))
        max
      )
      (= answer (list-of x y max))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (D1 D2 D3 D4 f p x y min) (&&
      (= D1 (set-of-cfun (Lam x (PLam y (<= 0 y)))))
      (= D2 (set-of-cfun (Lam x (PLam y (<= y (+ x 1))))))
      (= D3 (set-of-cfun (Lam x (PLam y (<= 3 (+ (* 2 x) (* 3 y)))))))
      (= D4 (set-of-cfun (Lam x (PLam y (<= (+ (* 3 x) y) 9)))))
      (= f (Lam P (+ (x-coord P) (* 3 (y-coord P)))))
      (= p (point x y))
      (on p (intersection (list-of D1 D2 D3 D4)))
      (= min (LamApp f p))
      (minimum
        (set-by-def (PLam v (exists (p0) (&&
          (on p0 (intersection (list-of D1 D2 D3 D4)))
          (= v (LamApp f p0))
        ))))
        min
      )
      (= answer (list-of x y min))
    ))
  )
)

(def-answer p1 (PLam answer (= answer (list-of 2 3 11))))

(def-answer p2 (PLam answer (= answer (list-of (/ 3 2) 0 (/ 3 2)))))

