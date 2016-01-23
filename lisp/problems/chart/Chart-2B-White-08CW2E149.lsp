;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E149
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (answer)
    (exists (l1 l2 a) (&&
      (= answer a)
      (= l1 (line2d (- a 1) -4 -2))
      (= l2 (line2d 1 (- a 5) -3))
      (perpendicular l1 l2)
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (l1 l2 a) (&&
      (= answer a)
      (= l1 (line2d (- a 1) -4 -2))
      (= l2 (line2d 1 (- a 5) -3))
      (parallel l1 l2)
    ))
  )
)

(def-answer p1 (PLam answer
  (= answer (/ 19 3))))

(def-answer p2 (PLam answer
  (= answer 3)))

