;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1991, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Let $ABC$ be a triangle and $P$ an interior point of $ABC$. Show that at least one
;; of the angles $¥angle PAB$, $¥angle PBC$, $¥angle PCA$ is less than or equal to
;; $30^{¥circ}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C P)
                (-> (&& (is-triangle A B C)
                        (point-inside-of P (triangle A B C)))
                    (|| (<= (rad-of-angle (angle P A B)) (/ (Pi) 6))
                        (<= (rad-of-angle (angle P B C)) (/ (Pi) 6))
                        (<= (rad-of-angle (angle P C A)) (/ (Pi) 6)))))))

