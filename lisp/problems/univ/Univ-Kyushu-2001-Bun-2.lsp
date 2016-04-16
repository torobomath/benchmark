;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Humanities Course, Problem 2
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
;; (2) Prove that $G$ is point-symmetric with respect to a certain point
;; on it.
;;
;; (3) Find the coordinates of the point symmetric to the point $(X, Y)$
;; with respect to the straight line $x = p$ that is parallel to the $y$
;; axis.
;;
;; (4) Prove that $G$ is not line-symmetric with respect to any straight
;; line that is parallel to the $y$ axis.
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
  (Find (R)
  (line-symmetry (point X Y) R (line (point p 0) (point p 1)))))

(def-directive
  p4
  (Show
    (exists (G)
      (&&
        (= G (graph-of (poly-fun (list-of c b a 1))))
        (forall (x)
          (! (line-symmetry-shape G (line (point x 0) (point x 1)))))))))

(def-answer p1 (PLam P (= P (point (- (* 2 p) X) (- (* 2 q) Y)))))

(def-answer p3 (PLam R (= R (point (- (* 2 p) X) Y))))

