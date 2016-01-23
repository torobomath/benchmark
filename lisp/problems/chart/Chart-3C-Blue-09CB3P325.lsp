;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P325
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (C P L) (&&
      (= C (graph-of-implicit-function (Lam x (Lam y (- y (^ (sin (* 2 x)) 2))))))
      (= P (point (/ (Pi) 8) (/ 1 2)))
      (= answer (list-of x y))
      (line-type L)
      (on P L)
      (tangent L C P)
      (on (point x y) L)
    ))
  )
)

(def-directive p2
  (Find (S)
    (exists (C P O L) (&&
      (= C (graph-of-implicit-function (Lam x (Lam y (- y (^ (sin (* 2 x)) 2))))))
      (= P (point (/ (Pi) 8) (/ 1 2)))
      (= O (origin))
      (line-type L)
      (on P L)
      (tangent L C P)
      (= S (area-of (shape-enclosed-by (list-of C L (y-axis)))))
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (+ (* 2 x) (/ 1 2)) (/ (- (Pi)) 4)))
)))

(def-answer p2 (PLam S (= S (- (/ (^ (Pi) 2) 64) (/ 1 8)))))

