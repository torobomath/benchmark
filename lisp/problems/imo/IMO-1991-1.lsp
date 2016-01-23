;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1991, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Given a triangle $ABC$, let $I$ be the center of its inscribed circle. The
;; internal bisectors of the angles $A$, $B$, $C$ meet the opposite sides in
;; $A^{¥prime}$, $B^{¥prime}$, $C^{¥prime}$ respectively. Prove that
;; ¥[
;; ¥frac{1}{4} < ¥frac{AI ¥cdot BI ¥cdot CI}{AA^{¥prime} ¥cdot BB^{¥prime} ¥cdot
;; CC^{¥prime}} ¥le ¥frac{8}{27}.
;; ¥]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C I A0 B0 C0)
                (-> (&& (is-triangle A B C)
                        (is-incenter-of I (triangle A B C))
                        (on A0 (line B C))
                        (on B0 (line C A))
                        (on C0 (line A B))
                        (is-angle-bisector (line A A0) (angle C A B))
                        (is-angle-bisector (line B B0) (angle A B C))
                        (is-angle-bisector (line C C0) (angle B C A)))
                    (&& (< (/ 1 4)
                           (/ (* (distance A I) (distance B I) (distance C I))
                              (* (distance A A0) (distance B B0) (distance C C0))))
                        (<= (/ (* (distance A I) (distance B I) (distance C I))
                               (* (distance A A0) (distance B B0) (distance C C0)))
                            (/ 8 27)))))))

