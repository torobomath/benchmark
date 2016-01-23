;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1969, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; A semicircular arc $\gamma$ is drawn on $AB$ as diameter.
;; $C$ is a point on $\gamma$ other than $A$ and $B$, and $D$ is the foot of the
;; perpendicular from $C$ to $AB$. We consider three circles, $\gamma_1$, $\gamma_2$,
;; $\gamma_3$, all tangent to the line $AB$. Of these, $\gamma_1$ is
;; inscribed in $\triangle ABC$, while $\gamma_2$ and $\gamma_3$ are both tangent to
;; $CD$ and to $\gamma$, one on each side of $CD$. Prove that $\gamma_1$,
;; $\gamma_2$ and $\gamma_3$ have a second tangent in common.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B Gamma C D Gamma1 Gamma2 Gamma3)
     (-> (&& (circle-type Gamma)
               (is-diameter-of (seg A B) Gamma)
               (on C Gamma)
               (! (= C A))
               (! (= C B))
               (= (foot-of-perpendicular-line-from-to C (line A B)) D)
               (circle-type Gamma1)
               (circle-type Gamma2)
               (circle-type Gamma3)
               (tangent (line A B) Gamma1)
               (tangent (line A B) Gamma2)
               (tangent (line A B) Gamma3)
               (is-inscribed-in Gamma1 (triangle A B C))
               (tangent (seg C D) Gamma2)
               (tangent (seg C D) Gamma3)
               (intersect (seg C D) (seg (center-of Gamma2) (center-of Gamma3))))
         (exists (l)
                   (&& (line-type l)
                       (tangent l Gamma1)
                       (tangent l Gamma2)
                       (tangent l Gamma3)
                       (! (= l (line A B)))))))))

