;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2000, Problem 6
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; A1A2A3 is an acute-angled triangle. The foot of the altitude
;; from Ai is Ki and the incircle touches the side opposite Ai at Li. The line
;; K1K2 is reflected in the line L1L2. Similarly, the line K2K3 is reflected in
;; L2L3 and K3K1 is reflected in L3L1. Show that the three new lines form a
;; triangle with vertices on the incircle.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show (forall (A1 A2 A3 K1 K2 K3 L1 L2 L3 P l1 l2 l3 B1 B2 B3 C)
      (-> (&& (is-acute-triangle (triangle A1 A2 A3))
                    (= K1 (foot-of-perpendicular-line-from-to A1 (line A2 A3)))
                    (= K2 (foot-of-perpendicular-line-from-to A2 (line A3 A1)))
                    (= K3 (foot-of-perpendicular-line-from-to A3 (line A1 A2)))
                    (is-incenter-of P (triangle A1 A2 A3))
                    (= L1 (foot-of-perpendicular-line-from-to P (line A2 A3)))
                    (= L2 (foot-of-perpendicular-line-from-to P (line A3 A1)))
                    (= L3 (foot-of-perpendicular-line-from-to P (line A1 A2)))
                    (= C (circle P (distance P L1)))
                    (line-type l1)
                    (line-type l2)
                    (line-type l3)
                    (line-symmetry-shapes (line K2 K3) l1 (line L2 L3))
                    (line-symmetry-shapes (line K3 K1) l2 (line L3 L1))
                    (line-symmetry-shapes (line K1 K2) l3 (line L1 L2))
                    (lines-intersect-at (list-of l2 l3) B1)
                    (lines-intersect-at (list-of l3 l1) B2)
                    (lines-intersect-at (list-of l1 l2) B3))
                (&& (is-triangle B1 B2 B3)
                    (on B1 C)
                    (on B2 C)
                    (on B3 C))))))

