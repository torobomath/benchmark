;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2C026
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 2d)

(def-directive p1
  (Find (d)
    (= d (distance (point -2 4) (point 7 -3)))
  )
)

(def-directive p2
  (Find (d)
    (= d (distance (point 0 0) (point -6 8)))
  )
)

(def-answer p1 (PLam d (= d (sqrt 130))))

(def-answer p2 (PLam d (= d 10)))

