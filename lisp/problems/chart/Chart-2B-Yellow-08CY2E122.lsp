;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E122
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p
  (Find (answer)
    (exists (A B C P min x y) (&&
      (= A (point 0 0))
      (= B (point 2 5))
      (= C (point 6 0))
      (= min (+ (+ (distance^2 P A) (distance^2 P B)) (distance^2 P C)))
      (minimum
        (set-by-def (PLam v (exists (P0)
          (= v (+ (+ (distance^2 P0 A) (distance^2 P0 B)) (distance^2 P0 C)))
        )))
        min
      )
      (= (point x y) P)
      (= answer (list-of min x y))
    ))
  )
)

(def-answer p (PLam answer (= answer (list-of (/ 106 3) (/ 8 3) (/ 5 3)))))

