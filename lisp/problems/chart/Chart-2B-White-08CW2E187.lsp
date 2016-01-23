;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E187
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (O C P) (&&
      (= O (set-of-cfun (Lam x (PLam y (= (^ r 2) (+ (^ x 2) (^ (- y 1) 2)))))))
      (= C (set-of-cfun (Lam x (PLam y (= y (* a (^ x 2)))))))
      (< 0 r)
      (< 0 a)
      (= answer (list-of r a))
      (on P (intersection O C))
      (forall (Q) (->
        (on Q (intersection O C))
        (= P Q)
      ))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (O C P Q R) (&&
      (= O (set-of-cfun (Lam x (PLam y (= (^ r 2) (+ (^ x 2) (^ (- y 1) 2)))))))
      (= C (set-of-cfun (Lam x (PLam y (= y (* a (^ x 2)))))))
      (< 0 r)
      (< 0 a)
      (= answer (list-of r a))
      (on P (intersection O C))
      (on Q (intersection O C))
      (on R (intersection O C))
      (< (x-coord P) (x-coord Q))
      (< (x-coord Q) (x-coord R))
      (forall (T) (->
        (on T (intersection O C))
        (|| (= P T) (= Q T) (= R T))
      ))
    ))
  )
)

(def-directive p3
  (Find (S)
    (exists (O C P Q R r) (&&
      (= O (set-of-cfun (Lam x (PLam y (= (^ r 2) (+ (^ x 2) (^ (- y 1) 2)))))))
      (= C (set-of-cfun (Lam x (PLam y (= y (* a (^ x 2)))))))
      (< 0 a)
      (< 0 r)
      (on P (intersection O C))
      (on Q (intersection O C))
      (on R (intersection O C))
      (< (x-coord P) (x-coord Q))
      (< (x-coord Q) (x-coord R))
      (forall (T) (->
        (on T (intersection O C))
        (|| (= P T) (= Q T) (= R T))
      ))
      (= S (area-of (triangle P Q R)))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of r a))
  (= r 1)
  (< 0 a) (<= a (/ 1 2))
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of r a))
  (= r 1)
  (< (/ 1 2) a)
)))

(def-answer p3 (PLam S (&&
  (< (/ 1 2) a)
  (= S (/ (* (- (* 2 a) 1) (sqrt (- (* 2 a) 1))) (^ a 2)))
)))

