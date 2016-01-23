;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-17
;;
;; <PROBLEM-TEXT>
;; In the $x y z$space, assume that the point $P$ is on the parabola
;; $z = 1 - y^2$ on the $y z$ plane. Let $V$ be the volume of the region
;; enclosed by the planes $x=0$ and $x=1$, and the curved surface
;; obtained by rotating the straight line connecting the points
;; $A(1, 0, 1)$ and $P$ around the $x$ axis. Represent $V$ using the $y$
;; coordinate of $P$. Find the minimum value of $V$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (V)
      (exists (P z A) (&&
          (= P (point 0 y z))
          (= z (+ 1 (- (^ y 2))))
          (= A (point 1 0 1))
          (= V (volume-of (shape-enclosed-by (list-of
              (solid-of-revolution (seg P A) (x-axis))
              (set-of-cfun (Lam x (Lam y (PLam z (= x 0)))))
              (set-of-cfun (Lam x (Lam y (PLam z (= x 1)))))
          ))))
      ))))

(def-directive
  p2
  (Find (Vmin)
      (minimum
          (set-by-def (PLam V (exists (P y z A) (&&
              (= P (point 0 y z))
              (= z (+ 1 (- (^ y 2))))
              (= A (point 1 0 1))
              (= V (volume-of (shape-enclosed-by (list-of
                  (solid-of-revolution (seg P A) (x-axis))
                  (set-of-cfun (Lam x (Lam y (PLam z (= x 0)))))
                  (set-of-cfun (Lam x (Lam y (PLam z (= x 1)))))
              ))))
          ))))
          Vmin
      )))

(def-answer p1 (PLam V (= V (/ (* (Pi) (+ (^ y 4) (- (* 2 (^ y 2))) 3)) 3))))

(def-answer p2 (PLam V_min (= V_min (/ (* 2 (Pi)) 3))))

