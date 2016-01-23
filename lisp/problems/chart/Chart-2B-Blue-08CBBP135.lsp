;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP135
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 3d)

(def-directive p1
  (Find (a)
    (exists (S1 S2 p) (&&
      (= S1 (set-of-cfun (Lam x (Lam y (PLam z (= 1 (+ (+ (^ x 2) (^ y 2)) (^ z 2))))))))
      (= S2 (set-of-cfun (Lam x (Lam y (PLam z (= 0 (+ (+ (+ (+ (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (* -4 x)) (* -2 y)) (* 4 z)) a)))))))
      (intersect S1 S2 p)
      (forall (x y z) (->
        (on (point x y z) S1)
        (<= 0 (+ (+ (+ (+ (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (* -4 x)) (* -2 y)) (* 4 z)) a))
      ))
    ))
  )
)

(def-directive p2
  (Find (a)
    (exists (S1 S2 p) (&&
      (= S1 (set-of-cfun (Lam x (Lam y (PLam z (= 1 (+ (+ (^ x 2) (^ y 2)) (^ z 2))))))))
      (= S2 (set-of-cfun (Lam x (Lam y (PLam z (= 0 (+ (+ (+ (+ (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (* -4 x)) (* -2 y)) (* 4 z)) a)))))))
      (intersect S1 S2 p)
      (forall (x y z) (->
        (on (point x y z) S1)
        (<= (+ (+ (+ (+ (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (* -4 x)) (* -2 y)) (* 4 z)) a) 0)
      ))
    ))
  )
)

(def-answer p1 (PLam a (= a 5)))

(def-answer p2 (PLam a (= a -7)))

