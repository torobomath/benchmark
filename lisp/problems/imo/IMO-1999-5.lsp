;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1999, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Two circles $G_1$ and $G_2$ are contained inside the circle $G$, and are tangent
;; to $G$ at the distinct points $M$ and $N$, respectively. $G_1$ passes through the
;; center of $G_2$. The line passing through the two points of intersection of $G_1$
;; and $G_2$ meets $G$ at $A$ and $B$. The lines $MA$ and $MB$ meet $G_1$ at $C$ and
;; $D$, respectively. Prove that $CD$ is tangent to $G_2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (G G1 G2 M N P Q A B C D)
                (-> (&& (circle-type G)
                        (circle-type G1)
                        (circle-type G2)
                        (is-inscribed-in G1 G)
                        (is-inscribed-in G2 G)
                        (tangent G G1 M)
                        (tangent G G2 N)
                        (! (= M N))
                        (on (center-of G2) G1)
                        (intersect G1 G2 P)
                        (intersect G1 G2 Q)
                        (! (= P Q))
                        (intersect (line P Q) G A)
                        (intersect (line P Q) G B)
                        (! (= A B))
                        (intersect (line M A) G1 C)
                        (intersect (line M B) G1 D)
                        (! (= C D)))
                    (tangent (line C D) G2)))))

