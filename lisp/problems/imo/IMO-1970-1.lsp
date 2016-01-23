;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1970, Problem 1
;; SCORE:     5
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-27
;;
;; <PROBLEM-TEXT>
;; Let $M$ be a point on the side $AB$ of $\triangle ABC$.
;; Let $r_1$, $r_2$ and $r$ be the radii of the inscribed circles of triangles $AMC$,
;; $BMC$ and $ABC$. Let $q_1$, $q_2$ and $q$ be the radii of the escribed circles of the
;; same triangles that lie in the angle $ACB$. Prove that\[
;; \frac{r_1}{q_1} \cdot \frac{r_2}{q_2} = \frac{r}{q}.
;; \]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C M r1 r2 K1 K2 rho1 rho2 K3 K4 r rho K5 K6)
     (-> (&& (is-triangle A B C)
               (on M (seg A B))
               (circle-type K1)
               (circle-type K2)
               (is-inscribed-in K1 (triangle A C M))
               (is-inscribed-in K2 (triangle B C M))
               (= (radius-of K1) r1)
               (= (radius-of K2) r2)
               (circle-type K3)
               (circle-type K4)
               (is-excircle-of K3 (triangle A C M) C)
               (is-excircle-of K4 (triangle B C M) C)
               (= (radius-of K3) rho1)
               (= (radius-of K4) rho2)
               (circle-type K5)
               (circle-type K6)
               (is-inscribed-in K5 (triangle A B C))
               (is-excircle-of K6 (triangle A B C) C)
               (= (radius-of K5) r)
               (= (radius-of K6) rho))
           (= (* (/ r1 rho1) (/ r2 rho2)) (/ r rho))))))

