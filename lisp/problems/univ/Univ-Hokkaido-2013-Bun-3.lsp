;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2013, Humanities Course, Problem 3
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-09-26
;;
;; <PROBLEM-TEXT>
;; Consider the spatial vectors $\vec{a} =(1, 0, 0)$, $\vec{b}$,
;; $\vec{c}$, and $\vec{d}$. Assume that
;; $|\vec{b}| = |\vec{c}| = |\vec{d}| = 1$, $\vec{b}$ is on the $x y$
;; plane, and the $y$ component of $\vec{b}$ is positive. Define
;; $\vec{a}\cdot\vec{b} = p$.
;;
;; (1) Prove that $|p| < 1$. Find the component form of $\vec{b}$ using
;; $p$.
;;
;; (2) Assume that $\vec{c}$ and $\vec{d}$ are different from each other
;; and satisfy
;; $\vec{a}\cdot\vec{c} =\vec{a}\cdot\vec{d} =\vec{b}\cdot\vec{c} =\vec{b}\cdot\vec{d} = p$.
;; When the $z$ component of $\vec{c}$ is positive, find the component
;; form of $\vec{c}$ and $\vec{d}$ using $p$.
;;
;; (3) When $\vec{c}\cdot\vec{d} = p$ in addition to the above
;; condition, find the value of $p$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1_1
  (Show
   (forall (b0 b1)
     (let*
         (
          (a (vec3d 1 0 0))
          (b (vec3d b0 b1 0))
          (p (inner-prod a b))
          )
       (->
        (&& (< 0 b1)
      (is-unit-vec b)
         )
        (< (abs p) 1)
        )
       )
    )
  )
)

;#250

(def-directive
  p1_2
  (Find (b)
        (let*
      (
       (a (vec3d 1 0 0))
       )
    (&&
     (= (z-coord b) 0)
     (< 0 (y-coord b))
     (= p (inner-prod a (vec (origin) b)))
     (is-unit-vec (vec (origin) b))
     )
    )
        )
)

(def-answer p1_2 (PLam b (&& (< (- 1) p) (< p 1)
           (= b (point p (sqrt (- 1 (^ p 2))) 0)))))

(def-directive
  p2_c
  (Find (c)
    (exists (b0 b1 d0 d1 d2)
      (let*
        (
          (a (vec3d 1 0 0))
          (b (vec3d b0 b1 0))
          (d (vec3d d0 d1 d2))
        )
        (&&
          (< 0 b1)
          (< 0 (z-coord c))
          (! (= (vec (origin) c) d))
          (= p (inner-prod a (vec (origin) c)))
          (= p (inner-prod a d))
          (= p (inner-prod b (vec (origin) c)))
          (= p (inner-prod b d))
          (= p (inner-prod a b))
          (= 1 (radius^2 b))
          (= 1 (radius^2 (vec (origin) c)))
          (= 1 (radius^2 d))
        )
      )
    )
  )
)

(def-answer p2_c (PLam c (&& (< (- 1) p) (< p 1)
        (= c (point p (/ (* p (sqrt (- 1 p))) (sqrt (+ 1 p))) (/ (sqrt (* (- 1 p) (+ 1 (* 2 p)))) (sqrt (+ 1 p))))))))

(def-directive
  p2_d
  (Find (d)
    (exists (b0 b1 c0 c1 c2)
      (let*
        (
          (a (vec3d 1 0 0))
          (b (vec3d b0 b1 0))
          (c (point c0 c1 c2))
        )
        (&&
          (< 0 b1)
          (< 0 c2)
          (! (= c d))
          (= p (inner-prod a b))
          (= p (inner-prod a (vec (origin) c)))
          (= p (inner-prod a (vec (origin) d)))
          (= p (inner-prod b (vec (origin) c)))
          (= p (inner-prod b (vec (origin) d)))
          (= 1 (radius^2 b))
          (= 1 (radius^2 (vec (origin) c)))
          (= 1 (radius^2 (vec (origin) d)))
        )
      )
    )
  )
)

(def-answer p2_d (PLam d (&& (< (- 1) p) (< p 1)
           (= d (point p (/ (* p (sqrt (- 1 p))) (sqrt (+ 1 p))) (- (/ (sqrt (* (- 1 p) (+ 1 (* 2 p)))) (sqrt (+ 1 p)))))
))))

(def-directive
  p3
  (Find (p)
    (exists (b0 b1 c0 c1 c2 d0 d1 d2)
      (let*
        (
          (a (vec3d 1 0 0))
          (b (vec3d b0 b1 0))
          (c (vec3d c0 c1 c2))
          (d (vec3d d0 d1 d2))
        )
        (&&
          (< 0 b1)
          (< 0 c2)
          (! (= c d))
          (= p (inner-prod a b))
          (= p (inner-prod a c))
          (= p (inner-prod a d))
          (= p (inner-prod b c))
          (= p (inner-prod b d))
          (= p (inner-prod c d))
          (is-unit-vec b)
          (is-unit-vec c)
          (is-unit-vec d)
        )
      )
    )
  )
)

 (def-answer p3 (PLam p (= p (- (/ 1 3)))))

