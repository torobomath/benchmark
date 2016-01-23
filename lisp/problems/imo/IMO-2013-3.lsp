;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2013, Problem 3
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-15
;;
;; <PROBLEM-TEXT>
;; Let the excircle of triangle $ABC$ opposite the vertex $A$ be tangent to the
;; side $BC$ at the point $A_1$. Define the points $B_1$ on $CA$ and $C_1$ on $AB$ analogously,
;; using the excircles opposite $B$ and $C$, respectively. Suppose that
;; the circumcentre of triangle $A_1B_1C_1$ lies on the circumcircle of triangle $ABC$.
;; Prove that triangle $ABC$ is right-angled.
;; The excircle of triangle $ABC$ opposite the vertex $A$ is the circle that is
;; tangent to the line segment $BC$, to the ray $AB$ beyond $B$, and to the ray
;; $AC$ beyond $C$. The excircles opposite $B$ and $C$ are similarly defined.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C SA SB SC A1 B1 C1 P S)
                (-> (&& (circle-type SA)
                        (circle-type SB)
                        (circle-type SC)
                        (circle-type S)
                        (is-triangle A B C)
                        (is-excircle-of SA (triangle A B C) A)
                        (tangent SA (line B C) A1)
                        (is-excircle-of SB (triangle A B C) B)
                        (tangent SB (line C A) B1)
                        (is-excircle-of SC (triangle A B C) C)
                        (tangent SC (line A B) C1)
                        (is-circumcenter-of P (triangle A1 B1 C1))
                        (is-inscribed-in (triangle A B C) S)
                        (on P S))
                    (is-right-triangle (triangle A B C))))))

