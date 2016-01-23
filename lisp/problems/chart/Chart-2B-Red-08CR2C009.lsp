;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CR2C009
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 2d)

(def-directive p1
  (Find (d)
    (exists (l) (&&
      (= l (line2d 4 3 12))
      (< 0 d)
      (= (^ d 2) (point-shape-distance^2 (origin) l))
    ))
  )
)

(def-directive p2
  (Find (d)
    (exists (l) (&&
      (= l (line2d 2 -3 -5))
      (< 0 d)
      (= (^ d 2) (point-shape-distance^2 (point 4 -1) l))
    ))
  )
)

(def-directive p3
  (Find (d)
    (exists (l) (&&
      (= l (line2d 1 0 2))
      (< 0 d)
      (= (^ d 2) (point-shape-distance^2 (point -1 3) l))
    ))
  )
)

(def-directive p4
  (Find (d)
    (exists (l) (&&
      (= l (line2d 0 1 3))
      (< 0 d)
        (= (^ d 2) (point-shape-distance^2 (point 5 6) l))
    ))
  )
)

(def-answer p1 (PLam d (= d (/ 12 5))))

(def-answer p2 (PLam d (= d (/ (* 16 (sqrt 13)) 13))))

(def-answer p3 (PLam d (= d 3)))

(def-answer p4 (PLam d (= d 3)))

