;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE053
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (max)
    (exists (C1 C2) (&&
      (= C1 (Lam x (PLam y (= 1 (+ (^ x 2) (^ y 2))))))
      (= C2 (Lam a (PLam b (= 2 (+ (^ a 2) (^ b 2))))))
      (maximum
        (set-by-def (PLam v (exists (x y a b f) (&&
          (= f (Lam x (Lam y (Lam a (Lam b (+ (* a x) (* b y)))))))
          (PLamApp (LamApp C1 x) y)
          (PLamApp (LamApp C2 a) b)
          (= v (LamApp (LamApp (LamApp (LamApp f x) y) a) b))
        ))))
        max
      )
    ))
  )
)

(def-directive p2
  (Find (min)
    (exists (C1 C2) (&&
      (= C1 (Lam x (PLam y (= 1 (+ (^ x 2) (^ y 2))))))
      (= C2 (Lam a (PLam b (= 2 (+ (^ a 2) (^ b 2))))))
      (minimum
        (set-by-def (PLam v (exists (x y a b f) (&&
          (= f (Lam x (Lam y (Lam a (Lam b (+ (* a x) (* b y)))))))
          (PLamApp (LamApp C1 x) y)
          (PLamApp (LamApp C2 a) b)
          (= v (LamApp (LamApp (LamApp (LamApp f x) y) a) b))
        ))))
        min
      )
    ))
  )
)

(def-answer p1 (PLam max (= max (sqrt 2))))

(def-answer p2 (PLam min (= min (- (sqrt 2)))))

