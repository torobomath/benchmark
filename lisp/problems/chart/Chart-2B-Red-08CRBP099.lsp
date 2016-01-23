;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Red Book, Problem 08CRBP099
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-27

(namespace 3d)

(def-directive p1
  (Find (answer)
    (exists (P A d g H x y z) (&&
      (= P (point 1 2 6))
      (= A (point 2 -6 -6))
      (= d (vec3d 3 -2 4))
      (= g (line A (vec-translate A d)))
      (= H (foot-of-perpendicular-line-from-to P g))
      (= answer (list-of x y z))
      (on (point x y z) (line P H))
    ))
  )
)

(def-directive p2
  (Find (Q)
    (exists (P A d g) (&&
      (= P (point 1 2 6))
      (= A (point 2 -6 -6))
      (= d (vec3d 3 -2 4))
      (= g (line A (vec-translate A d)))
      (line-symmetry P Q g)
    ))
  )
)

(def-answer p1 (PLam answer (exists (x y z) (&&
  (= answer (list-of x y z))
  (= 0 (+ (+ (* 5 x) (* 2 y)) -9))
  (= 0 (+ (+ (* 2 x) z) -8))
))))

(def-answer p2 (PLam Q (= Q (point  9 -18 -10))))

