;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2004, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-31
;;
;; <PROBLEM-TEXT>
;; Let ABC be an acute-angled triangle with AB != AC. The
;; circle with diameter BC intersects the sides AB and AC at M and N
;; respectively. Denote by O the midpoint of the side BC. The bisectors of
;; the angles angle(BAC) and angle(MON) intersect at R. Prove that the
;; circumcircles of the triangles BMR and CNR have a common point lying on the
;; side BC.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C O K1 M N l1 l2 R K2 K3)
     (-> (&& (is-acute-triangle A B C)
               (! (= (length-of (seg A B)) (length-of (seg A C))))
               (circle-type K1)
               (is-diameter-of (seg B C) K1)
               (intersect (seg A B) K1 M)
               (! (= M B))
               (intersect (seg A C) K1 N)
               (! (= N C))
               (= (midpoint-of B C) O)
               (line-type l1)
               (line-type l2)
               (is-angle-bisector l1 (angle B A C))
               (is-angle-bisector l2 (angle M O N))
               (intersect l1 l2 R)
               (circle-type K2)
               (circle-type K3)
               (is-inscribed-in (triangle B M R) K2)
               (is-inscribed-in (triangle C N R) K3))
           (exists (P)
                   (&& (on P (seg B C))
                       (intersect K2 K3 P)))))))

