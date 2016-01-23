;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R074
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (A l P) (&&
      (= A (set-of-cfun (Lam x (PLam y (= 10 (+ (^ x 2) (^ y 2)))))))
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (- x) 2))))))
      (= answer (list-of x y))
      (intersect A l P)
      (= (point x y) P)
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (A l P) (&&
      (= A (set-of-cfun (Lam x (PLam y (= 10 (+ (^ x 2) (^ y 2)))))))
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* 3 x) 10))))))
      (= answer (list-of x y))
      (intersect A l P)
      (= (point x y) P)
    ))
  )
)

(def-directive p3
  (Find (answer)
    (exists (A l) (&&
      (= A (set-of-cfun (Lam x (PLam y (= 10 (+ (^ x 2) (^ y 2)))))))
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* 2 x) -8))))))
      (= answer (list-of x y))
      (intersect A l P)
      (= (point x y) P)
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (|| (= (point x y) (point -1 3))
    (= (point x y) (point 3 -1))
  )
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= (point x y) (point -3 1))
)))

(def-answer p3 (PLam answer (false)))

