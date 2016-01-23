;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1988, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-18
;;
;; <PROBLEM-TEXT>
;; $ABC$ is a triangle right-angled at $A$, and D is the foot of the altitude from
;; $A$. The straight line joining the incenters of the triangles $ABD$, $ACD$
;; intersects the sides $AB$, $AC$ at the points $K$, $L$ respectively. $S$ and $T$
;; denote the areas of the triangles $ABC$ and $AKL$ respectively.
;; Show that $S ¥ge 2T$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D Ln O1 O2 S T K L)
     (-> (&& (is-triangle B A C)
               (perpendicular (line B A) (line C A))
               (= D (foot-of-perpendicular-line-from-to A (line B C)))
               (is-incenter-of O1 (triangle A B D))
               (is-incenter-of O2 (triangle A C D))
               (line-type Ln)
               (on O1 Ln)
               (on O2 Ln)
               (intersect Ln (seg A B) K)
               (intersect Ln (seg A C) L)
               (= S (area-of (triangle A B C)))
               (= T (area-of (triangle A K L))))
           (>= S (* 2 T))))))

