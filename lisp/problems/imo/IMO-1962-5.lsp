;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; On the circle $K$ there are given three distinct points $A$, $B$, $C$.
;; Construct (using only straightedge and compasses) a fourth
;; point $D$ on $K$ such that a circle can be inscribed in the quadrilateral
;; thus obtained.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (D)
  (exists (A B C K K2)
    (&& (= A (point Ax Ay))
        (= B (point Bx By))
        (= C (point Cx Cy))
            (is-triangle A B C)
        (circle-type K)
        (is-inscribed-in (triangle A B C) K)
        (circle-type K2)
        (on D K)
            (is-square A B C D)
        (is-inscribed-in K2 (square A B C D))))))

(def-answer
  p
  (PLam D
    (exists (A B C I E K O)
            (&& (= A (point Ax Ay))
                (= B (point Bx By))
                (= C (point Cx Cy))
                (is-triangle A B C)
                (circle-type K)
                (is-inscribed-in (triangle A B C) K)
                (is-diameter-of (seg A E) K)
                (perpendicular (line O A) (line A E))
                (perpendicular (line (midpoint-of A C) O) (line A C))
                (is-angle-bisector (line B I) (angle A B C))
                (= (length-of (seg A O))
                   (length-of (seg I O)))
                (point-inside-of I K)
                (is-angle-bisector (line C I) (angle B C D))
                (is-angle-bisector (line A I) (angle D A B))
                (on D K)))))

