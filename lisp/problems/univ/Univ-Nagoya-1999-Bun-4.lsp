;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 1999, Humanities Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-12
;;
;; <PROBLEM-TEXT>
;; (b)
;;
;; 1) Draw the range of the point $(a_1, a_2)$ when the vector
;; $\vec{a} =(a_1, a_2)$ satisfies the following condition (*): (*)
;; There exists the vector $\vec{b} =(b_1, b_2)$ such that
;; $(\vec{a}\cdot\vec{p})^2 +(\vec{b}\cdot\vec{p})^2 = |\vec{p}|^2$ is
;; true for an arbitrary vector $\vec{p}$.
;;
;; 2) Find the vector $\vec{b} =(b_1, b_2)$ that satisfies the condition
;; (*) for $\vec{a} =(a_1, a_2)$ found in 1).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Draw (D)
    (= D (shape-of-cpfun (PLam a (exists (b)
      (forall (p)
        (= (+ (^ (inner-prod (vec (origin) a) p) 2)
        (^ (inner-prod b p) 2))
           (^ (radius p) 2))
            )
    ))))
  )
)

;#250?

(def-directive
  p2
  (Find (b)
  (exists (a)
    (&& (= a (vec2d a1 a2))
        (forall (p)
          (-> (exists (p1 p2) (= p (vec2d p1 p2)))
        (= (+ (^ (inner-prod a p) 2)
              (^ (inner-prod (vec (origin) b) p) 2))
           (^ (radius p) 2))
        )
          )
        )
    )
  )
)

(def-directive
  p2_1
  (Find (b1)
  (exists (b b2 a)
    (&& (= b (vec2d b1 b2))
        (= a (vec2d a1 a2))
        (forall (p)
          (-> (exists (p1 p2) (= p (vec2d p1 p2)))
        (= (+ (^ (inner-prod a p) 2)
              (^ (inner-prod b p) 2))
           (^ (radius p) 2))
        )
          )
        )
    )
  )
)

(def-directive
  p2_2
  (Find (b2)
  (exists (b b1 a)
    (&& (= b (vec2d b1 b2))
        (= a (vec2d a1 a2))
        (forall (p)
          (-> (exists (p1 p2) (= p (vec2d p1 p2)))
        (= (+ (^ (inner-prod a p) 2)
              (^ (inner-prod b p) 2))
           (^ (radius p) 2))
        )
          )
        )
    )
  )
)

(def-answer p1 (set-of-cfun (Lam x (PLam y (= (+ (^ x 2) (^ y 2)) 1)))))

(def-answer p2 (PLam b (&& (= (+ (^ a1 2) (^ a2 2)) 1)
         (|| (= b (point a2 (- a1))) (= b (point (- a2) a1))))))

(def-answer p2_1 (PLam b1 (&& (= (+ (^ a1 2) (^ a2 2)) 1)
            (|| (= b1 a2) (= b1 (- a2))))))

(def-answer p2_2 (PLam b2 (&& (= (+ (^ a1 2) (^ a2 2)) 1)
            (|| (= b2 a1) (= b2 (- a1))))))

(def-answer a1 (set-of-cfun (Lam x (PLam y (= (+ (^ x 2) (^ y 2)) 1)))))

(def-answer a2 (PLam b (&& (= (+ (^ a1 2) (^ a2 2)) 1)
                           (|| (= b (point a2 (- a1)))
                               (= b (point (- a2) a1))))))

