;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P341
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Draw (f)
    (= f (set-of-cfun (Lam x (PLam y (&&
      (= y (* (abs (- x 3)) (sqrt x)))
      (<= 0 x)
    )))))
  )
)

(def-answer p1 (set-of-cfun (Lam x (PLam y (&&
            (= (^ y 2) (* (^ (- x 3) 2) x))
            (<= 0 y)
      (<= 0 x))))))

(def-directive p2
  (Find (alpha)
    (exists (f S1 S2) (&&
      (= f (Lam x (* (abs (- x 3)) (sqrt x))))
      (= S1 (integral f 0 3))
      (= S2 (integral f 3 alpha))
      (= S1 S2)
    ))
  )
)

(def-answer p2 (PLam alpha (= alpha 5)))

