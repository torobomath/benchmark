;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 1999, Science Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-10
;;
;; <PROBLEM-TEXT>
;; Let $S_1$ be the spherical surface with the center at the point
;; $(10, 0, 0)$ in a space and the radius of $9$, and $S_2$, the
;; spherical surface with the center at the point $(0, 10, 0)$ and the
;; radius $8$. Find all the directional vectors $(a, b, c)$ $(c\ge 0)$
;; of the length $1$ that are in contact with $S_1$ and $S_2$ and pass
;; through the origin.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (abc)
    (exists (S1 S2 a b c l)
      (&&
        (sphere-type S1)
        (= (center-of S1) (point 10 0 0))
        (= (radius-of S1) 9)
        (sphere-type S2)
        (= (center-of S2) (point 0 10 0))
        (= (radius-of S2) 8)
        (line-type l)
        (tangent l S1)
        (tangent l S2)
        (on (origin) l)
        (= abc (vec (origin) (point a b c)))
        (= 1 (distance (origin) (point a b c)))
        (>= c 0)
        (vec-parallel abc (direction-vec l))
      )
    )
  )
)

(def-answer p1 (PLam abc (&& (= (abs (vec-x-coord abc)) (/ (sqrt 19) 10)) (= (abs (vec-y-coord abc)) (/ 3 5)) (= (vec-z-coord abc) (/ (* 3 (sqrt 5)) 10)))))

