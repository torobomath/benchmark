;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1974, Problem 2
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-26
;;
;; <PROBLEM-TEXT>
;; In the triangle $ABC$, prove that there is a point $D$ on side $AB$ such that $CD$
;; is the geometric mean of $AD$ and $DB$ if and only if\[
;; \sin A \sin B \leq \sin^2 \frac{C}{2}.
;; \]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C)
     (-> (is-triangle A B C)
         (<-> (exists (D)
                   (&& (on D (seg A B))
                       (= (length-of (seg C D))
                          (sqrt (* (length-of (seg A D)) (length-of (seg B D)))))))
                (<= (* (sin (rad-of-angle (angle B A C)))
                       (sin (rad-of-angle (angle A B C))))
                    (^ (sin (* (/ 1 2) (rad-of-angle (angle A C B)))) 2)))))))

