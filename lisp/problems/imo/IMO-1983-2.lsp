;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1983, Problem 2
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Let $A$ be one of the two distinct points of intersection of two unequal coplanar
;; circles $C_1$ and $C_2$ with centers $O_1$ and $O_2$, respectively. One of the
;; common tangents to the circles touches $C_1$ at $P_1$ and $C_2$ at $P_2$, while
;; the other touches $C_1$ at $Q_1$ and $C_2$ at $Q_2$. Let $M_1$ be the midpoint of
;; $P_1Q_1$, and $M_2$ be the midpoint of $P_2Q_2$.
;; Prove that $¥angle O_1AO_2 = ¥angle M_1AM_2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
       (forall (A C1 C2 O1 O2 M1 M2 P1 P2 Q1 Q2)
          (-> (&& (on A (intersection C1 C2))
                  (exists (B) (&& (! (= A B))
                                  (on B (intersection C1 C2))))
                  (circle-type C1)
                  (circle-type C2)
                  (= O1 (center-of C1))
                  (= O2 (center-of C2))
                  (= M1 (midpoint-of P1 Q1))
                  (= M2 (midpoint-of P2 Q2))
                  (! (= (radius-of C1) (radius-of C2)))
                  (tangent C1 (line P1 P2) P1)
                  (tangent C2 (line P1 P2) P2)
                  (tangent C1 (line Q1 Q2) Q1)
                  (tangent C2 (line Q1 Q2) Q2))
              (= (rad-of-angle (angle O1 A O2))
                 (rad-of-angle (angle M1 A M2)))))))

