;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E212
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (F Q R P l1 l2) (&&
      (= F (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
      (= answer (list-of x y))
      (! (= Q R))
      (on Q F)
      (on R F)
      (line-type l1)
      (line-type l2)
      (on Q l1)
      (on R l2)
      (tangent F l1 Q)
      (tangent F l2 R)
      (perpendicular l1 l2)
      (on P l1)
      (on P l2)
      (= (point x y) P)
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (F M Q R l1 l2) (&&
      (= F (graph-of (poly-fun (list-of 0 0 (/ 1 4)))))
      (= answer (list-of x y))
      (! (= Q R))
      (on Q F)
      (on R F)
      (line-type l1)
      (line-type l2)
      (on Q l1)
      (on R l2)
      (tangent F l1 Q)
      (tangent F l2 R)
      (perpendicular l1 l2)
      (= M (midpoint-of Q R))
      (= (point x y) M)
    ))
  )
)

(def-answer p1 (PLam answer (&&
  (= answer (list-of x y))
  (= y -1)
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of x y))
  (= y (+ (/ (^ x 2) 2) 1))
)))

