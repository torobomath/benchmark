;; DOMAIN:    Geometry, misc
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 2008, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-10-22
;;
;; <PROBLEM-TEXT>
;; An acute-angled triangle ABC has orthocentre H. The circle passing through
;; H with centre the midpoint of BC intersects the line BC at A1 and A2.
;; Similarly, the circle passing through H with centre the midpoint of CA
;; intersects the line CA at B1 and B2, and the circle passing through H with
;; centre the midpoint of AB intersects the line AB at C1 and C2. Show that A1,
;; A2, B1, B2, C1, C2 lie on a circle.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C H K1 A1 A2 K2 B1 B2 K3 C1 C2)
     (-> (&& (is-acute-triangle A B C)
               (is-orthocenter-of H (triangle A B C))
               (circle-type K1)
               (= (center-of K1) (midpoint-of B C))
               (on H K1)
               (! (= A1 A2))
               (intersect (line B C) K1 A1)
               (intersect (line B C) K1 A2)
               (circle-type K2)
               (= (center-of K2) (midpoint-of C A))
               (on H K2)
               (! (= B1 B2))
               (intersect (line A C) K2 B1)
               (intersect (line A C) K2 B2)
               (circle-type K3)
               (= (center-of K3) (midpoint-of B A))
               (on H K3)
               (! (= C1 C2))
               (intersect (line A B) K3 C1)
               (intersect (line A B) K3 C2))
           (concircular (list-of A1 A2 B1 B2 C1 C2))))))

