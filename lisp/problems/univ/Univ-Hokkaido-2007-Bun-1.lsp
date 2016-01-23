;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-30
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be real numbers. Assume that the equation
;; $x^2 + a x + b = 0$ has real solutions, and the absolute values of
;; all the solutions are equal to or smaller than $1$.
;;
;; (1) Draw all the points $(a, b)$ that satisfy this condition on the
;; $a b$ plane.
;;
;; (2) Find the maximum and minimum values of $a + 2 b$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (ab)
  (exists (a b)
    (&& (= ab (list-of a b))
        (forall (x)
          (->
           (= 0 (+ (^ x 2) (* a x) b))
           (<= (abs x) 1)
           )
          )
        (exists (x)
          (= 0 (+ (^ x 2) (* a x) b))
      )
    )
  ))
)

(def-directive
  p2
  (Find (zmax)
    (minimum
      (set-by-def (PLam z
        (exists (a b)
          (&&
            (= z (+ a (* 2 b)))
            (forall (x)
              (->
                (= 0 (+ (^ x 2) (* a x) b))
                (<= (abs x) 1)
              )
            )
          )
        )
      )) zmax)
  ))

(def-answer p1 (PLam ab (exists (a b) (&&
  (= ab (list-of a b))
  (<= -2 a) (<= a 2)
  (<= (- a 1) b)
  (<= (- (- a) 1) b)
  (<= b (/ (^ a 2) 4))))))

(def-answer p2 (PLam zmax (= zmax -2)))

