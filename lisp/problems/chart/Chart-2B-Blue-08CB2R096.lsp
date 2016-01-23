;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R096
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 2d)

(def-directive p1
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (< 0 (+ x y))
      (< 0 (+ (* 2 x) (+ (- y) 2)))
    )))))
  )
)

(def-directive p2
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (< (+ x (+ (* 2 y) 2)) 0)
      (<= 4 (+ (^ x 2) (^ y 2)))
    )))))
  )
)

(def-directive p3
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (<= 1 (+ (^ (- x 2) 2) (^ y 2)))
      (<= (+ (^ x 2) (^ y 2)) 4)
    )))))
  )
)

(def-answer p1 (set-of-cfun (Lam x (PLam y (&&
      (< 0 (+ x y))
      (< 0 (+ (* 2 x) (+ (- y) 2))))))))

(def-answer p2 (set-of-cfun (Lam x (PLam y (&&
      (< (+ x (+ (* 2 y) 2)) 0)
      (<= 4 (+ (^ x 2) (^ y 2))))))))

(def-answer p3 (set-of-cfun (Lam x (PLam y (&&
      (<= 1 (+ (^ (- x 2) 2) (^ y 2)))
      (<= (+ (^ x 2) (^ y 2)) 4))))))

