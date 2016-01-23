;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1978, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; In triangle $ABC$, $AB = AC$. A circle is tangent internally to the
;; circumcircle of triangle $ABC$ and also to sides $AB$, $AC$ at $P$, $Q$, respectively.
;; Prove that the midpoint of segment $PQ$ is the center of the incircle of
;; triangle $ABC$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C K1 K2 P Q)
     (-> (&& (is-triangle A B C)
               (= (length-of (seg A B)) (length-of (seg A C)))
               (circle-type K1)
               (circle-type K2)
               (is-inscribed-in (triangle A B C) K1)
               (is-inscribed-in K2 K1)
               (tangent (seg A B) K2 P)
               (tangent (seg A C) K2 Q))
           (is-incenter-of (midpoint-of P Q) (triangle A B C))))))

