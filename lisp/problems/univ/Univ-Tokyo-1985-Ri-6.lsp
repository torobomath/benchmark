;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1985, Science Course, Problem 6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; In the $x y z$ space, let $A$ be the point $(0, 0, 0)$, $B$ the point
;; $(8, 0, 0)$, and $C$ the point $(6, 2\sqrt{3}, 0)$. When the point
;; $P$ makes a circuit on the sides of $\triangle ABC$, let $K$ be the
;; solid formed by the sphere with the center at $P$ and the radius $1$.
;;
;; (1) Find the area of the cross section of $K$ cut by the plane
;; $z = 0$.
;;
;; (2) Find the volume of $K$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (S)
        (exists (A B C K)
                (&& (= A (origin))
                    (= B (point 8 0 0))
                    (= C (point 6 (* 2 (^ 3 (/ 1 2))) 0))
                    (= K (shape-of-cpfun (PLam p (exists (P)
                                                       (&& (on P (triangle A B C))
                                                           (>= 1 (distance p P)))))))
                    (= S (area-of (intersection K
                                                (shape-of-cpfun (PLam p (= (z-coord p) 0))))))))))

(def-directive
  p2
  (Find (V)
        (exists (A B C K)
                (&& (= A (origin))
                    (= B (point 8 0 0))
                    (= C (point 6 (* 2 (^ 3 (/ 1 2))) 0))
                    (= K (shape-of-cpfun (PLam p (exists (P)
                                                       (&& (on P (triangle A B C))
                                                           (>= 1 (distance p P)))))))
                    (= V (volume-of K))))))

(def-answer p1 (PLam S (= S (+ (Pi) 21 (* 6 (sqrt 3))))))

(def-answer p2 (PLam V (= V (- (* (/ (* 4 (+ 10 (* 3 (sqrt 3)))) 3) (Pi))
                               (/ (* 4 (+ 3 (* 2 (sqrt 3)))) 3)))))

