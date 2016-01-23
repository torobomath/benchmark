;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1998, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-06
;;
;; <PROBLEM-TEXT>
;; Determine all finite sets $S$ of at least three points in the plane which satisfy
;; the following condition:
;; ¥begin{flushleft}
;; for any two distinct points $A$ and $B$ in $S$, the perpendicular bisector of the
;; line segment $AB$ is an axis of symmetry for $S$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (y)
  (exists (f)
       (&& (forall (n) (-> (<= n 0) (= (LamApp f n) 0)))
           (forall (n) (-> (> n 0) (> (LamApp f n) 0)))
           (forall (s t)
                   (-> (&& (< 0 s)
                           (< 0 t))
                       (= (LamApp f (* (int.^ t 2) (LamApp f s)))
                          (* s (^ (LamApp f t) 2)))))
           (= y (LamApp f 1998))))))

(def-answer p (PLam y (= y 120)))

