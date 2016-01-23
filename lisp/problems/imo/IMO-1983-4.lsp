;; DOMAIN:    Combinatorics, special geometry
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1983, Problem 4
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Let $ABC$ be an equilateral triangle and $¥varepsilon$ the set of all points
;; contained in the three segments $AB$, $BC$ and $CA$ (including $A$, $B$ and $C$).
;; Determine whether, for every partition of $¥varepsilon$ into two disjoint subsets,
;; at least one of the two subsets contains the vertices of a right-angled triangle.
;; Justify your answer.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
    (forall (A B C Epsilon S1 S2)
      (-> (&& (is-equilateral-triangle A B C)
          (= Epsilon
                       (set-by-def (PLam p (on p (union (list-of (seg A B)
                                                                 (seg B C)
                                                                 (seg C A)))))))
                    (.is-empty (set-intersection S1 S2))
          (= Epsilon (set-union S1 S2)))
        (|| (exists (a b c)
                       (&& (elem a S1) (elem b S1) (elem c S1)
               (is-right-triangle a b c)))
          (exists (a b c)
                       (&& (elem a S2) (elem b S2) (elem c S2)
               (is-right-triangle a b c))))))))

