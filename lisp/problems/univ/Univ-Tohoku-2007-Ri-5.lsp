;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2007, Science Course, Problem 5
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; In the $x y z$ space, let $l$ be the line segment that connects the
;; points $(1, 0, 1)$ and $(1, 0, 2)$, and $A$, the figure obtained by
;; rotating $l$ around the $z$ axis. Find the volume of the solid
;; obtained by rotating $A$ around the $x$ axis.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p
  (Find (V)
  (exists (l A)
    (&&
     (= l (line (point 1 0 1) (point 1 0 2)))
     (= A (rotation-around l (z-axis)))
     (= V (volume-of (rotation-around A (x-axis))))))))

(def-answer p (PLam V (= V (* 6 (Pi)))))

