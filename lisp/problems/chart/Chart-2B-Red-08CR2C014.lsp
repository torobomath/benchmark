;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C014
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Show
    (exists (C C1 P Q) (&&
      (= C (set-of-cfun (Lam x (PLam y (= (^ 2 2) (+ (^ (- x 1) 2) (^ (- y 2) 2)))))))
      (= C1 (set-of-cfun (Lam x (PLam y (= (^ (sqrt 2) 2) (+ (^ (- x 2) 2) (^ (- y 3) 2)))))))
      (! (= P Q))
      (intersect C C1 P)
      (intersect C C1 Q)
      (forall (R) (->
        (intersect C C1 R)
        (|| (= P R) (= Q R))
      ))
    ))
  )
)

(def-directive p2
  (Show
    (exists (C C2) (&&
      (= C (set-of-cfun (Lam x (PLam y (= (^ 2 2) (+ (^ (- x 1) 2) (^ (- y 2) 2)))))))
      (= C2 (set-of-cfun (Lam x (PLam y (= (^ (* 2 (sqrt 2)) 2) (+ (^ (+ x 2) 2) (^ (+ y 2) 2)))))))
      (forall (P) (-> (on P C) (point-outside-of P C2)))
      (forall (Q) (-> (on Q C2) (point-outside-of Q C)))
    ))
  )
)

(def-directive p3
  (Show
    (exists (C C3 P) (&&
      (= C (set-of-cfun (Lam x (PLam y (= (^ 2 2) (+ (^ (- x 1) 2) (^ (- y 2) 2)))))))
      (= C3 (set-of-cfun (Lam x (PLam y (= (^ (- (* 2 (sqrt 5)) 2) 2) (+ (^ (- x 3) 2) (^ (- y 6) 2)))))))
      (intersect C C3 P)
      (forall (Q) (->
        (intersect C C3 Q)
        (= P Q)
      ))
      (forall (x y) (->
        (on (point x y) C)
        (<= (^ (- (* 2 (sqrt 5)) 2) 2) (+ (^ (- x 3) 2) (^ (- y 6) 2)))
      ))
      (forall (x y) (->
        (on (point x y) C3)
        (<= (^ 2 2) (+ (^ (- x 1) 2) (^ (- y 2) 2)))
      ))
    ))
  )
)

