;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2013, Science Course, Problem 4
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2014-07-31
;;
;; <PROBLEM-TEXT>
;; Let $V$ be the cone obtained by rotating the triangle $OAB$ whose
;; vertices are the points $O(0, 0, 0)$, $A(1, 0, 1)$, and $B(1, 1, 0)$
;; in the $x y z$ space around the $x$ axis. Find the volume of the
;; solid obtained by rotating the cone $V$ around the $y$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p4
  (Find (v) (= v (volume-of
    (solid-of-revolution
      (solid-of-revolution
       (triangle
        (point 0 0 0)
        (point 1 1 0)
        (point 1 0 1))
         (x-axis)
         )
        (y-axis))
       )
    )
  )
)

(def-answer p4 (PLam v (= v (* (/ 8 3) (Pi)))))

