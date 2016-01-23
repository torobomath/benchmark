;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E045
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p
  (Find (l)
    (exists (D) (&&
      (= D (set-of-cfun (Lam x (PLam y (&& (<= 0 x) (<= 0 y) (<= y (+ (+ (- (^ x 2)) x) a)))))))
      (<= 0 a)
      (maximum
        (set-by-def (PLam v (exists (P1 P2 P3 P4) (&&
          (is-regular-square P1 P2 P3 P4)
          (forall (P) (->
            (point-inside-of P (square P1 P2 P3 P4))
            (on P D)
          ))
          (on P1 (x-axis))
          (on P2 (x-axis))
          (= v (distance P1 P2))
        ))))
        l
      )
    ))
  )
)

(def-answer p (PLam l (||
  (&& (<= 0 a) (<= a 1) (= l (- (sqrt (+ (* 4 a) 5)) 2)))
  (&& (< 1 a) (= l (sqrt a)))
)))

