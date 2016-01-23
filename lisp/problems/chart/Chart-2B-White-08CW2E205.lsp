;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E205
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p
  (Find (answer)
    (&& (= answer (list-of x y))
      (exists (t C) (&&
        (circle-type C)
        (= C (set-of-cfun (Lam u (PLam v (= 0 (+ (+ (+ (^ u 2) (^ v 2)) (* (* -2 t) u)) (* (* -2 (- 1 t)) v)))))))
        (= (point x y) (center-of C))
      ))
    )
  )
)

(def-answer p (PLam answer (&&
  (= answer (list-of x y))
  (= 0 (+ (+  x y) -1))
)))

