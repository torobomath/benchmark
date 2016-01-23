;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E180
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (P l t) (&&
      (= P (point x y))
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* (* 2 t) x) (^ t 2)))))))
      (= answer (list-of x y))
      (on P l)
      (forall (t0 l0) (-> (&&
          (= l0 (set-of-cfun (Lam x (PLam y (= y (+ (* (* 2 t0) x) (^ t0 2)))))))
          (on P l0)
        )
        (= t t0)
      ))
    ))
  )
)

(def-directive p2
  (Draw (P)
    (exists (l t) (&&
      (= l (set-of-cfun (Lam x (PLam y (= y (+ (* (* 2 t) x) (^ t 2)))))))
      (on P l)
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= y (- (^ x 2)))
)))

(def-answer p2 (set-of-cfun (Lam x (PLam y (>= y (- (^ x 2)))))))

