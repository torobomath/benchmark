;; DOMAIN:    Geometry, circle
;; THEORY:    trans
;; SOURCE:    International Mathematical Olympiad, 1979, Problem 3
;; SCORE:     7
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; Two circles in a plane intersect. Let $A$ be one of the points of
;; intersection. Starting simultaneously from $A$ two points move with constant
;; speeds, each point travelling along its own circle in the same sense. The two
;; points return to $A$ simultaneously after one revolution. Prove that there is
;; a fixed point $P$ in the plane such that, at any time, the distances from $P$ to
;; the moving points are equal.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show
    (forall (C1 C2 A B theta1 theta2)
      (-> (&& (circle-type C1)
              (circle-type C2)
              (intersect C1 C2 A)
              (intersect C1 C2 B)
              (! (= A B))
              (= A (vec-translate (center-of C1)
          (sv* (radius-of C1)
               (vec2d (cos theta1)
                (sin theta1)))))
              (= A (vec-translate (center-of C2)
          (sv* (radius-of C2)
               (vec2d (cos theta2)
                (sin theta2))))))
          (exists (P)
             (forall (theta)
                (= (distance P (vec-translate (center-of C1)
                (sv* (radius-of C1)
               (vec2d (cos (+ theta1 theta))
                (sin (+ theta1 theta))))))
                   (distance P (vec-translate (center-of C2)
                (sv* (radius-of C2)
               (vec2d (cos (+ theta2 theta))
                (sin (+ theta2 theta)))))))))))))

