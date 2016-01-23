;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-29
;;
;; <PROBLEM-TEXT>
;; Construct triangle $ABC$ if $AC = b$, $AB = c$ and $\angle AMB = \omega$,
;; where $M$ is the midpoint of segment $BC$ and $\omega < 90^{\circ}$.
;; Prove that a solution exists if and only if\[
;; b \tan \frac{\omega}{2} \leq c < b.
;; \]In what case does the equality hold?
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (b c omega)
                (<-> (exists (A B C M)
                             (&& (is-triangle A B C)
                                 (= b (distance A C))
                                 (= c (distance A B))
                                 (= (rad-of-angle (angle A M B)) omega)
                                 (< omega (* 90 (Degree)))
                                 (= M (midpoint-of B C))))
                     (&& (< 0 omega)
                         (< omega (Pi))
                         (< 0 b)
                         (<= (* b (tan (/ omega 2))) c)
                         (< c b))))))

(def-directive
  p2
  (Find (ABC)
        (exists (A B C M b c omega)
                (&& (= ABC (triangle A B C))
                    (is-triangle A B C)
                    (= b (distance A C))
                    (= c (distance A B))
                    (< omega (* 90 (Degree)))
                    (= (* b (tan (/ omega 2))) c)
                    (= M (midpoint-of B C))
                    (= (rad-of-angle (angle A M B)) omega)))))

(def-answer p2 (PLam ABC (exists (A B C)
                                 (&& (= ABC (triangle A B C))
                                     (is-right-triangle A B C)))))

