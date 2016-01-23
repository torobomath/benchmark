;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E209
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (<= y (^ x 2))))))
  )
)

(def-directive p2
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (< (+ (- (^ x 2)) 1) y)))))
  )
)

(def-directive p3
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (< (* (+ (+ x y) -2) (+ y (- (^ x 2)))) 0)))))
  )
)

(def-answer p1 (set-of-cfun (Lam x (PLam y (<= y (^ x 2))))))

(def-answer p2 (set-of-cfun (Lam x (PLam y (< (+ (- (^ x 2)) 1) y)))))

(def-answer p3 (set-of-cfun (Lam x (PLam y (|| (&& (< 0 (+ x y -2)) (> 0 (- y (^ x 2))))
                                               (&& (> 0 (+ x y -2)) (< 0 (- y (^ x 2)))))))))

