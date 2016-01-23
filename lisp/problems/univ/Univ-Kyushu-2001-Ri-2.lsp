;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Science Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-28
;;
;; <PROBLEM-TEXT>
;; Let $G$ be the graph of the cubic function
;; $y = x^3 + a x^2 + b x + c$.
;;
;; (1) Find the coordinates of the point symmetric to the point $(X, Y)$
;; with respect to the point $(p, q)$ on the $x y$ plane.
;;
;; (2) Prove that the $G$ is point-symmetric with respect to a certain
;; point on it.
;;
;; (3) Find the coordinates of the point symmetric to the point $(X, Y)$
;; with respect to the straight line $m x + n y = 0$, where neither $m$
;; nor $n$ is $0$.
;;
;; (4) Prove that $G$ is not line-symmetric with respect to any straight
;; line that passes through the origin.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (P)
  (point-symmetry P (point X Y) (point p q))))

(def-directive
  p2
  (Show
    (exists (G Q)
      (&&
        (= G (graph-of (poly-fun (list-of c b a 1))))
        (point-symmetry-shape G Q)))))

(def-directive
  p3
  (Find (R) (&&
    (! (= n 0))
    (! (= m 0))
    (line-symmetry (point X Y) R (line (point 0 0) (point 1 (/ (- m) n)))))))

(def-directive
  p4
  (Show
    (forall (G a b c m) (->
      (&&
        (= G (graph-of (poly-fun (list-of c b a 1))))
        (line-type m)
        (on (point 0 0) m)
      )
      (! (line-symmetry-shape G m))
    ))
  ))

(def-answer p1 (PLam P (= P (point (- (* 2 p) X) (- (* 2 q) Y)))))

(def-answer p3 (PLam R (&&
  (! (= n 0))
  (! (= m 0))
  (= R (point (/ (- (* (- (^ n 2) (^ m 2)) X) (* 2 m n Y)) (+ (^ m 2) (^ n 2)))
              (/ (+ (* -2 m n X) (* (- (^ m 2) (^ n 2)) Y)) (+ (^ m 2) (^ n 2))))))))

