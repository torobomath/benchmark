;; DOMAIN:    Matrices
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2013, Science Course, Problem 2
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-09-26
;;
;; <PROBLEM-TEXT>
;; On the coordinate plane, let $f$ be the reflection with respect to
;; the straight line $y = x$, and let $g$ be the reflection with respect
;; to the straight line $y = c x$, where $c$ is a real number.
;; Meanwhile, let $h$ be the rotation of $120^{\circ}$ around the
;; origin.
;;
;; (1) Find the matrices that represent $f$ and $h$.
;;
;; (2) Find the matrix that represents $g$.
;;
;; (3) Find the value of $c$ such that the synthetic transformation
;; $f\circ g$ is $h$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_1
  (Find (A)
    (exists (s t u v)
      (&&
        (= A (matrix s t u v))
        (forall (x y)
          (line-symmetry
            (point x y)
            (vec->point (mv* A (vec2d x y)))
            (line (origin) (point 1 1))
          )
        )
      )
    )
  )
)

(def-answer p1_1 (PLam A (= A (matrix 0 1 1 0))))

(def-directive
  p1_2
  (Find (C)
    (let ((h (Lam P (point-rotate-around-origin P (/ (* 2 (Pi)) 3)))))
      (exists (s t u v)
        (&&
          (= C (matrix s t u v))
          (forall (x y) (= (vec->point (mv* C (vec2d x y))) (LamApp h (point x y))))
        )
      )
    )
  )
)

(def-answer p1_2 (PLam C (= C (matrix (- (/ 1 2)) (- (/ (sqrt 3) 2)) (/ (sqrt 3) 2) (- (/ 1 2))))))

(def-directive
  p2
  (Find (B)
    (exists (s t u v)
      (&&
        (= B (matrix s t u v))
        (forall (x y)
          (line-symmetry
            (point x y)
            (vec->point (mv* B (vec2d x y)))
            (line (origin) (point 1 c))
          )
        )
      )
    )
  )
)

(def-answer p2 (PLam B (= B (matrix (/ (- 1 (^ c 2)) (+ 1 (^ c 2))) (/ (* 2 c) (+ 1 (^ c 2))) (/ (* 2 c) (+ 1 (^ c 2))) (/ (- (^ c 2) 1) (+ 1 (^ c 2)))))))

(def-directive
  p3
  (Find (c)
    (let ((h (Lam P (point-rotate-around-origin P (/ (* 2 (Pi)) 3)))))
      (forall (x y p q r s)
        (->
          (&&
            (line-symmetry
              (point x y)
              (point p q)
              (line (origin) (point 1 c))
            )
            (line-symmetry
              (point p q)
              (point r s)
              (line (origin) (point 1 1))
            )
          )
          (= (point r s) (LamApp h (point x y)))
        )
      )
    )
  )
)

(def-answer p3 (PLam c (= c (- (sqrt 3) 2))))

(def-answer a1 (PLam A_C (= A (list-of (matrix 0 1 1 0)
                                       (matrix (- (/ 1 2)) (- (/ (sqrt 3) 2)) (/ (sqrt 3) 2) (- (/ 1 2)))))))

(def-answer a2 (PLam B (= B (matrix (/ (- 1 (^ c 2)) (+ 1 (^ c 2))) (/ (* 2 c) (+ 1 (^ c 2))) (/ (* 2 c) (+ 1 (^ c 2))) (/ (- (^ c 2) 1) (+ 1 (^ c 2)))))))

(def-answer a3 (PLam c (= c (- (sqrt 3) 2))))

