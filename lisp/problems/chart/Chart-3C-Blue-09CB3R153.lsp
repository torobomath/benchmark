;; DOMAIN:    Integration and its Applications
;; THEORY:    trans
;; LEVEL:     2
;; SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3R153
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2015-01-01

(namespace 3d)

(def-directive p
  (Find (V)
    (= V (volume-of (shape-of-cpfun (PLam p (exists (x P Q R) (&&
        (= P (point x 0 0))
        (= Q (point x (sin x) 0))
        (<= 0 x) (<= x (Pi))
        (on R (plane2 P (direction-vec (x-axis))))
        (is-equilateral-triangle P Q R)
        (point-inside-of p (triangle P Q R)))
      )))
    ))
  )
)

(def-answer p (PLam V (= V (* (/ (sqrt 3) 8) (Pi)))))

