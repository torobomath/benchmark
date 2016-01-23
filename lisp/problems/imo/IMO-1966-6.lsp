;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1966, Problem 6
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; In the interior of sides $BC$, $CA$, $AB$ of triangle $ABC$, any points $K$, $L$, $M$,
;; respectively, are selected. Prove that the area of at least one of the
;; triangles $AML$, $BKM$, $CLK$ is less than or equal to one quarter of the area
;; of triangle $ABC$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C M K L)
           (-> (&& (is-triangle A B C)
                   (on M (seg A B))
                   (on K (seg B C))
                   (on L (seg C A))
                   (! (= M A))
                   (! (= M B))
                   (! (= K B))
                   (! (= K C))
                   (! (= L C))
                   (! (= L A)))
               (|| (<= (area-of (triangle M A L)) (/ (area-of (triangle A B C)) 4))
                   (<= (area-of (triangle K B M)) (/ (area-of (triangle A B C)) 4))
                   (<= (area-of (triangle L C K)) (/ (area-of (triangle A B C)) 4)))))))

