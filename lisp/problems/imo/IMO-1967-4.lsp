;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1967, Problem 4
;; SCORE:     6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-27
;;
;; <PROBLEM-TEXT>
;; Let $A_0B_0C_0$ and $A_1B_1C_1$ be any two acute-angled triangles.
;; Consider all triangles $ABC$ that are similar to $\triangle A_1B_1C_1$
;; (so that vertices $A_1$, $B_1$, $C_1$ correspond to vertices $A$, $B$, $C$, respectively)
;; and circumscribed about triangle $A_0B_0C_0$
;; (where $A_0$ lies on $BC$, $B_0$ on $CA$, and $AC_0$ on $AB$).
;; Of all such possible triangles, determine the one with maximum area,
;; and construct it.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (X)
        (exists (A B C A0 B0 C0 A1 B1 C1)
               (&& (= A0 (point A0x A0y))
                   (= B0 (point B0x B0y))
                   (= C0 (point C0x C0y))
                   (= A1 (point A1x A1y))
                   (= B1 (point B1x B1y))
                   (= C1 (point C1x C1y))
                   (is-acute-triangle A0 B0 C0)
                   (is-acute-triangle A1 B1 C1)
                   (is-triangle A B C)
                   (= X (triangle A B C))
                   (ordered-similar (triangle A B C) (triangle A1 B1 C1))
                   (on A0 (seg B C))
                   (on B0 (seg C A))
                   (on C0 (seg A B))
                   (maximum (set-by-def (PLam x (exists (A2 B2 C2)
                                                        (&& (is-triangle A2 B2 C2)
                                                            (ordered-similar (triangle A2 B2 C2) (triangle A1 B1 C1))
                                                            (on A0 (seg B2 C2))
                                                            (on B0 (seg C2 A2))
                                                            (on C0 (seg A2 B2))
                                                            (= x (area-of (triangle A2 B2 C2)))))))
                            (area-of (triangle A B C)))))))

(def-answer p (PLam X (exists (A B C Oa Ob Oc Ap Bp Cp)
                              (&& (= X (triangle A B C))
                                  (on (point A0x A0y) (seg B C))
                                  (on (point B0x B0y) (seg C A))
                                  (on (point C0x C0y) (seg A B))
                                  (parallel (line Ob Oc) (line B C))
                                  (parallel (line Oc Oa) (line C A))
                                  (parallel (line Oa Ob) (line A B))
                                  (on Ap (seg B C))
                                  (on Bp (seg C A))
                                  (on Cp (seg A B))
                                  (ordered-similar (triangle Ap Bp Cp) (triangle (point A1x A1y)
                                                                                 (point B1x B1y)
                                                                                 (point C1x C1y)))
                                  (is-circumcenter-of Oa (triangle Ap (point B0x B0y) (point C0x C0y)))
                                  (is-circumcenter-of Ob (triangle (point A0x A0y) Bp (point C0x C0y)))
                                  (is-circumcenter-of Oc (triangle (point A0x A0y) (point B0x B0y) Cp))))))

