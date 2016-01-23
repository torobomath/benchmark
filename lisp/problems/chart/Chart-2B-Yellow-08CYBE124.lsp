;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE124
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-29

(namespace 3d)

(def-directive p1
  (Find (S)
    (= S (set-of-cfun (Lam x (Lam y (PLam z (= 0 (+ (+ (+ (+ (+ (+ (^ x 2) (^ y 2)) (^ z 2)) (- x)) (* -4 y)) (* 3 z)) 4)))))))
  )
)

(def-answer p1
  (PLam S (= S (sphere (point (/ 1 2) 2 (/ -3 2)) (/ (sqrt 10) 2)))))

(def-directive p2
  (Find (answer)
    (exists (S Cx Cy Cz r) (&&
      (= answer (list-of Cx Cy Cz r))
      (sphere-type S)
      (on (point 1 0 0) S)
      (on (point 0 1 0) S)
      (on (point 0 0 1) S)
      (on (point 1 1 1) S)
      (= (point Cx Cy Cz) (center-of S))
      (= r (radius-of S))
    ))
  )
)

(def-answer p2 (PLam answer (= answer (list-of (/ 1 2) (/ 1 2) (/ 1 2) (/ (sqrt 3) 2)))))

