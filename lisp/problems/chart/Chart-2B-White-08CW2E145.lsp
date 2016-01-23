;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B White Book, Problem 08CW2E145
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-28

(namespace 2d)

(def-directive p1
  (Find (d)
    (= d (point-shape-distance (origin) (line2d 3 4 12)))
  )
)

(def-directive p2
  (Find (d)
    (= d (point-shape-distance (point -3 7) (line2d 12 -5 7)))
  )
)

(def-directive p3
  (Find (d)
    (= d (point-shape-distance (point 1 2) (line2d 0 1 4)))
  )
)

(def-directive p4
  (Find (d)
    (= d (point-shape-distance (point 2 8) (line2d 1 0 -1)))
  )
)

(def-answer p1 (PLam d (= d (/ 12 5))))

(def-answer p2 (PLam d (= d 6)))

(def-answer p3 (PLam d (= d 2)))

(def-answer p4 (PLam d (= d 3)))

