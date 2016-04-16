;; DOMAIN:    Geometry, lines and planes in 3D space
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1959, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Two planes, $P$ and $Q$, intersect along the line $p$. The point $A$ is given in the
;; plane $P$, and the point $C$ in the plane $Q$; neither of these points lies on the
;; straight line $p$. Construct an isosceles trapezoid $ABCD$ (with $AB$ parallel to
;; $CD$) in which a circle can be inscribed, and with vertices $B$ and $D$ lying in
;; the planes $P$ and $Q$ respectively.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Find (BD)
  (exists (A C B D p alpha beta K)
    (&& (= alpha (plane a1 b1 c1 d1))
        (= beta (plane a2 b2 c2 d2))
            (= A (point Ax Ay Az))
            (= C (point Cx Cy Cz))
        (on A alpha)
        (on C beta)
        (line-type p)
            (= (intersection alpha beta) p)
        (! (on A p))
        (! (on C p))
        (on B alpha)
        (on D beta)
        (is-trapezoid A B C D)
        (parallel (line A B) (line C D))
        (= (length-of (seg A C)) (length-of (seg B D)))
        (circle-type K)
        (is-inscribed-in K (square A B C D))
        (= BD (list-of B D))))))

(def-answer
  p
  (PLam BD (exists (a c A AA C p alpha beta B D)
                   (&& (= alpha (plane a1 b1 c1 d1))
                       (= beta (plane a2 b2 c2 d2))
                       (= A (point Ax Ay Az))
                       (= C (point Cx Cy Cz))
                       (on A alpha)
                       (on C beta)
                       (line-type p)
                       (= (intersection alpha beta) p)
                       (line-type a)
                       (line-type c)
                       (on A a)
                       (on C c)
                       (parallel a p)
                       (parallel c p)
                       (on AA c)
                       (perpendicular (line A AA) c)
                       (= (length-of (seg AA C)) (length-of (seg C B)))
                       (= (length-of (seg AA C)) (length-of (seg A D)))
                       (on B a)
                       (on D c)
                       (= BD (list-of B D))
                       (vec-opp-direction (vec A B) (vec C D))))))

