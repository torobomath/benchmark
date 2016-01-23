;; DOMAIN:    Vectors
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP143
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-26

(namespace 3d)

(def-directive p1
  (Find (S)
    (exists (A B C O P Q plane) (&&
      (< 0 l)
      (< 0 m)
      (< 0 n)
      (= O (origin))
      (= P (point l m n))
      (= Q (sphere O 1))
      (= plane (plane2 P (vec O P)))
      (on P Q)
      (intersect plane (x-axis) A)
      (intersect plane (y-axis) B)
      (intersect plane (z-axis) C)
      (= S (area-of (triangle A B C)))
    ))
  )
)

(def-directive p2
  (Find (answer)
    (exists (l m n min P Q plane) (&&
      (= O (origin))
      (= P (point l m n))
      (= Q (sphere O 1))
      (= plane (plane2 P (vec O P)))
      (< 0 l)
      (< 0 m)
      (= (/ 1 2) n)
      (on P Q)
      (intersect plane (x-axis) A)
      (intersect plane (y-axis) B)
      (intersect plane (z-axis) C)
      (= min (area-of (triangle A B C)))
      (minimum
        (set-by-def (PLam v (exists (plane0 P0 l0 m0 n0 A0 B0 C0) (&&
          (< 0 l0)
          (< 0 m0)
          (= (/ 1 2) n0)
          (= P0 (point l0 m0 n0))
          (on P0 Q)
          (= plane0 (plane2 P0 (vec O P0)))
          (intersect plane0 (x-axis) A0)
          (intersect plane0 (y-axis) B0)
          (intersect plane0 (z-axis) C0)
          (= v (area-of (triangle A0 B0 C0)))
          ))
        ))
        min
      )
      (= answer (list-of l m min))
    ))
  )
)

(def-answer p1 (PLam S (&&
  (= S (/ 1 (* (* (* 2 l) m) n)))
  (= 1 (+ (+ (^ l 2) (^ m 2)) (^ n 2)))
  (< 0 l)
  (< 0 m)
  (< 0 n)
)))

(def-answer p2 (PLam answer (&&
  (= answer (list-of l m min))
  (= l (/ (sqrt 6) 4))
  (= m (/ (sqrt 6) 4))
  (= min (/ 8 3))
)))

