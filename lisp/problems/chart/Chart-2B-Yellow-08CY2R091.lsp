;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2R091
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (< (+ (+ x (* -3 y)) -9) 0)
      (< 0 (+ (+ (* 2 x) (* 3 y)) -6))
    )))))
  )
)

(def-directive p2
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (<= (+ (^ x 2) (^ y 2)) 9)
      (< (- x y) 3)
    )))))
  )
)

(def-directive p3
  (Draw (D)
    (= D (set-of-cfun (Lam x (PLam y (&&
      (<= y (+ x 1))
      (<= (+ (^ x 2) -1) y)
    )))))
  )
)

(def-answer p1
  (set-of-cfun (Lam x (PLam y
    (&& (< (+ (+ x (* -3 y)) -9) 0)
        (< 0 (+ (+ (* 2 x) (* 3 y)) -6)))))))

(def-answer p2
   (set-of-cfun (Lam x (PLam y
                        (&& (<= (+ (^ x 2) (^ y 2)) 9)
                            (< (- x y) 3))))))

(def-answer p3
   (set-of-cfun (Lam x (PLam y
      (&& (<= y (+ x 1))
          (<= (+ (^ x 2) -1) y))))))

