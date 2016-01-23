;; DOMAIN:    Geometry, polygons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1995, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-10
;;
;; <PROBLEM-TEXT>
;; Let $ABCDEF$ be a convex hexagon with $AB = BC = CD$ and $DE =EF = FA$, such that
;; $¥angle BCD = ¥angle EFA = ¥pi/3$. Suppose $G$ and $H$ are points in the interior
;; of the hexagon such that $¥angle AGB = ¥angle DHE = 2 ¥pi/3$. Prove that
;; $AG + GB + GH + DH + HE ¥ge CF$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Show (forall (A B C D E F G H)
                (-> (&& (is-convex-shape (polygon (list-of A B C D E F)))
                        (= (distance A B) (distance B C))
                        (= (distance B C) (distance C D))
                        (= (distance D E) (distance E F))
                        (= (distance E F) (distance F A))
                        (= (rad-of-angle (angle B C D)) (/ (Pi) 3))
                        (= (rad-of-angle (angle E F A)) (/ (Pi) 3))
                        (point-inside-of G (polygon (list-of A B C D E F)))
                        (point-inside-of H (polygon (list-of A B C D E F)))
                        (= (rad-of-angle (angle A G B)) (/ (* 2 (Pi)) 3))
                        (= (rad-of-angle (angle D H E)) (/ (* 2 (Pi)) 3)))
                    (>= (+ (distance A G)
                           (distance G B)
                           (distance G H)
                           (distance D H)
                           (distance H E))
                        (distance C F))))))

