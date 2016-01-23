;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 2
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-30
;;
;; <PROBLEM-TEXT>
;; Consider the circle $C$ defined by the equation
;; $x^2 + y^2 - 4 y + 2 = 0$.
;;
;; (1) Prove that the $2$ circles passing through the points
;; $A(-\sqrt{2}, 0)$ and $O(0, 0)$ and centered at the points
;; $(-\frac{\sqrt{2}}{2}, 0)$ and $(-\frac{\sqrt{2}}{2}, 2)$ are both in
;; contact with the circle $C$.
;;
;; (2) When the point $P$ moves on the circle $C$, find the maximum and
;; minimum values of $\cos\angle APO$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show
    (forall (A O C C1 C2)
      (-> (&&
          (= A (point (- 0 (sqrt 2)) 0))
          (= O (point 0 0))
          (circle-type C1)
          (circle-type C2)
          (circle-type C)
          (= C (shape-of-cpfun
                 (PLam p (= 0 (+ (^ (x-coord p) 2) (^ (y-coord p) 2) (- (* 4 (y-coord p)))  2)))))
          (on A C1)
          (on A C2)
          (on O C1)
          (on O C2)
          (on O C2)
          (= (center-of C1) (point (- 0 (/ (sqrt 2) 2)) 0))
          (= (center-of C2) (point (- 0 (/ (sqrt 2) 2)) 2))
        ) (&&
          (tangent C C1)
          (tangent C C2)
        )
      ))))

(def-directive
  p2_1
  (Find (zmax)
    (maximum
      (set-by-def (PLam z
        (exists (A O P C)
          (&&
            (= A (point (- 0 (sqrt 2)) 0))
            (= O (point 0 0))
            (= z (cos-of-angle (angle A P O)))
            (circle-type C)
            (= (center-of C) (point 0 2))
            (= (radius-of C) (sqrt 2))
            (on P C)
          )
        )
      )) zmax)
  ))

(def-directive
  p2_2
  (Find (zmin)
    (minimum
      (set-by-def (PLam z
        (exists (A O P C)
          (&&
            (= A (point (- 0 (sqrt 2)) 0))
            (= O (point 0 0))
            (= z (cos-of-angle (angle A P O)))
            (circle-type C)
            (= (center-of C) (point 0 2))
            (= (radius-of C) (sqrt 2))
            (on P C)
          )
        )
      )) zmin)
  ))

(def-answer p2_1 (PLam zmax (= zmax (/ (* 2 (sqrt 2)) 3))))

(def-answer p2_2 (PLam zmin (= zmin 0)))

