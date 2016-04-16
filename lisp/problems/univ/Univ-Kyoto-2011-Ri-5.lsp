;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Science Course, Problem 5
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Prove that the spherical surface $S$ with the center at the origin
;; $O$ and the radius $\sqrt{6}$ has common points with the plane
;; ${\alpha}$ containing the points $(4, 0, 0)$, $(0, 4, 0)$, and
;; $(0, 0, 4)$ in the $xyz$ space, and find the range of the possible
;; value of the product $x y z$ when the point $(x, y, z)$ moves across
;; the set of all the common points.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  a_1
  (Show
    (let* ((S (sphere (origin) (sqrt 6))))
      (forall (s t u v) (let* ((alpha (plane s t u v))) (->
        (determine
          (list-of (point 4 0 0) (point 0 4 0) (point 0 0 4))
          alpha
        )
        (exists (p) (on p (intersection S alpha)))
      ))))))

(def-answer a_1 (PLam _ (true)))

(def-directive
  a_2
  (Find (V)
    (let* ((S (sphere (origin) (sqrt 6))))
      (forall (s t u v) (let* ((alpha (plane s t u v))) (->
        (determine
          (list-of (point 4 0 0) (point 0 4 0) (point 0 0 4))
          alpha
        )
        (exists (p) (&&
          (on p (intersection S alpha))
          (= V (* (x-coord p) (* (y-coord p) (z-coord p))))))))))))

(def-answer a_2 (PLam V (&& (<= (/ 50 27) V) (<= V 2))))

