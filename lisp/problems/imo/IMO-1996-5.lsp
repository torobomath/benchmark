;; DOMAIN:    Geometry, polygons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1996, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-06
;;
;; <PROBLEM-TEXT>
;; Let $ABCDEF$ be a convex hexagon such that $AB$ is parallel to $DE$, $BC$ is
;; parallel to $EF$, and $CD$ is parallel to $FA$. Let $R_A$, $R_C$, $R_E$ denote the
;; circumradii of triangles $FAB$, $BCD$, $DEF$, respectively, and let $P$ denote the
;; perimeter of the hexagon. Prove that
;; ¥[
;; R_A + R_C + R_E ¥ge ¥frac{P}{2}.
;; ¥]
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D E F K1 K2 K3 RA RC RE P)
     (-> (&& (is-convex-shape (polygon (list-of A B C D E F)))
               (parallel (line A B) (line D E))
               (parallel (line B C) (line E F))
               (parallel (line C D) (line A F))
               (circle-type K1)
               (circle-type K2)
               (circle-type K3)
               (is-inscribed-in (triangle F A B) K1)
               (is-inscribed-in (triangle B C D) K2)
               (is-inscribed-in (triangle D E F) K3)
               (= RA (radius-of K1))
               (= RC (radius-of K2))
               (= RE (radius-of K3))
               (= P (+ (length-of (seg A B))
                       (length-of (seg B C))
                       (length-of (seg C D))
                       (length-of (seg D E))
                       (length-of (seg E F))
                       (length-of (seg F A)))))
         (>= (+ RA RC RE) (/ P 2))))))

