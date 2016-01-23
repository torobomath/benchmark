;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P123
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (k)
    (exists (C l) (&&
      (= C (set-of-cfun (Lam x (PLam y (= 0 (+ (+ (+ (+ (^ x 2) (^ y 2)) (* 2 x)) (* -4 y)) 1))))))
      (= l (set-of-cfun (Lam x (PLam y (= y (- (* 2 x) k))))))
      (exists (P Q) (&&
        (! (= P Q))
        (on P (intersection C l))
        (on Q (intersection C l))
        (forall (R) (->
          (on R (intersection C l))
          (|| (= P R) (= Q R))
        ))
      ))
    ))
  )
)

(def-answer p (PLam k (< (+ (+ (^ k 2) (* 8 k)) -4) 0)))

