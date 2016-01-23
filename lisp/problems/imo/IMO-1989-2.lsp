;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1989, Problem 2
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-19
;;
;; <PROBLEM-TEXT>
;; In an acute-angled triangle $ABC$ the internal bisector of angle $A$ meets the
;; circumcircle of the triangle again at $A_1$. Points $B_1$ and $C_1$ are defined
;; similarly. Let $A_0$ be the point of intersection of the line $AA_1$ with the
;; external bisectors of angles $B$ and $C$. Points $B_0$ and $C_0$ are defined
;; similarly. Prove that:
;; ¥begin{flushleft}
;; (i) The area of the triangle $A_0B_0C_0$ is twice the area of the hexagon
;; $AC_1BA_1CB_1$.¥¥
;; (ii) The area of the triangle $A_0B_0C_0$ is at least four times the area of the
;; triangle $ABC$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (A B C S A0 B0 C0 A1 B1 C1)
                (-> (&& (is-acute-triangle A B C)
                        (circle-type S)
                        (is-inscribed-in (triangle A B C) S)
                        (on A1 S)
                        (on B1 S)
                        (on C1 S)
                        (is-angle-bisector (line A A1) (angle C A B))
                        (is-angle-bisector (line B B1) (angle A B C))
                        (is-angle-bisector (line C C1) (angle B C A))
                        (on A0 (line A A1))
                        (on B0 (line B B1))
                        (on C0 (line C C1))
                        (is-angle-bisector (line A0 B) (angle C B (vec-translate B (vec A B))))
                        (is-angle-bisector (line B0 C) (angle A C (vec-translate C (vec B C))))
                        (is-angle-bisector (line C0 A) (angle B A (vec-translate A (vec C A)))))
                    (= (* 2 (area-of (polygon (list-of A C1 B A1 C B1))))
                       (area-of (triangle A0 B0 C0)))))))

(def-directive
  p2
  (Show (forall (A B C S A0 B0 C0 A1 B1 C1)
                (-> (&& (is-acute-triangle A B C)
                        (circle-type S)
                        (is-inscribed-in (triangle A B C) S)
                        (on A1 S)
                        (on B1 S)
                        (on C1 S)
                        (is-angle-bisector (line A A1) (angle C A B))
                        (is-angle-bisector (line B B1) (angle A B C))
                        (is-angle-bisector (line C C1) (angle B C A))
                        (on A0 (line A A1))
                        (on B0 (line B B1))
                        (on C0 (line C C1))
                        (is-angle-bisector (line A0 B) (angle C B (vec-translate B (vec A B))))
                        (is-angle-bisector (line B0 C) (angle A C (vec-translate C (vec B C))))
                        (is-angle-bisector (line C0 A) (angle B A (vec-translate A (vec C A)))))
                    (<= (* 4 (area-of (triangle A B C)))
                        (area-of (triangle A0 B0 C0)))))))

