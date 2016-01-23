;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2001, Humanities Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Find the range of the real number $p$ such that the parabola
;; $y =(x - p)^2 - 2$ intersects with the triangle with the vertices at
;; the points $(0, 0)$, $(1, 2)$, and $(0, 2)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (p)
  (exists (C T)
    (&&
     (= C (graph-of (fun (Lam x (- (^ (- x p) 2) 2)))))
     (= T (triangle (point 0 0) (point 1 2) (point 0 2)))
     (exists (Q)
       (&&
        (on Q C)
        (on Q T)))))))

(def-answer p (PLam p (|| (&& (<= -2 p) (<= p -1)) (&& (<= (sqrt 2) p) (<= p 3)))))

