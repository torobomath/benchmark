;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 6
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Consider an isosceles triangle. Let $r$ be the radius of its circumscribed
;; circle and $\rho$ the radius of its inscribed circle.
;; Prove that the distance $d$ between the centers of these two circles is\[
;; d = \sqrt{r(r - 2\rho)}.
;; \]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (T K1 K2 r rho)
     (-> (&& (isosceles-triangle-type T)
               (circle-type K1)
               (circle-type K2)
               (is-inscribed-in K1 T)
               (is-inscribed-in T K2)
               (= r (radius-of K1))
               (= rho (radius-of K2)))
       (= (length-of (seg (center-of K1) (center-of K2)))
              (sqrt (* r (- r (* 2 rho)))))))))

