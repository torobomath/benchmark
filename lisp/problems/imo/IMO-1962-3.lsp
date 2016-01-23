;; DOMAIN:    Geometry, hexahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1962, Problem 3
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; Consider the cube $ABCDA'B'C'D'$ ($ABCD$ and $A'B'C'D'$ are the upper and
;; lower bases, respectively, and edges $AA'$, $BB'$, $CC'$, $DD'$ are parallel).
;; The point $X$ moves at constant speed along the perimeter of the square $ABCD$
;; in the direction $ABCDA$, and the point $Y$ moves at the same rate along
;; the perimeter of the square $B'C'CB$ in the direction $B'C'CBB'$. Points $X$
;; and $Y$ begin their motion at the same instant from the starting positions $A$
;; and $B'$, respectively. Determine and draw the locus of the midpoints of the
;; segments $XY$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Find (M)
   (exists (A1 B1 C1 D1
              A2 B2 C2 D2
              X Y)
        (&& (is-cube A1 B1 C1 D1 A2 B2 C2 D2)
            (= A1 (point A1x A1y A1z))
            (= B1 (point B1x B1y B1z))
            (= C1 (point C1x C1y C1z))
            (= D1 (point D1x D1y D1z))
            (= A2 (point A2x A2y A2z))
            (= B2 (point B2x B2y B2z))
            (= C2 (point C2x C2y C2z))
            (= D2 (point D2x D2y D2z))
            (|| (&& (on X (seg A1 B1))
                    (on Y (seg B2 C2))
                    (= (length-of (seg A1 X))
                       (length-of (seg B2 Y))))
                (&& (on X (seg B1 C1))
                    (on Y (seg C2 C1))
                    (= (length-of (seg B1 X))
                       (length-of (seg C2 Y))))
                (&& (on X (seg C1 D1))
                    (on Y (seg C1 B1))
                    (= (length-of (seg C1 X))
                       (length-of (seg C1 Y))))
                (&& (on X (seg D1 A1))
                    (on Y (seg B1 B2))
                    (= (length-of (seg D1 X))
                       (length-of (seg B1 Y))))
                (= M (midpoint-of X Y)))))))

(def-answer
  p
  (PLam M (exists (A1 B1 C1 D1
                   A2 B2 C2 D2)
            (&& (is-cube A1 B1 C1 D1 A2 B2 C2 D2)
                (= A1 (point A1x A1y A1z))
                (= B1 (point B1x B1y B1z))
                (= C1 (point C1x C1y C1z))
                (= D1 (point D1x D1y D1z))
                (= A2 (point A2x A2y A2z))
                (= B2 (point B2x B2y B2z))
                (= C2 (point C2x C2y C2z))
                (= D2 (point D2x D2y D2z))
                (on M (square C1
                              (point (/ (+ A1x B1x C1x D1x) 4)
                                     (/ (+ A1y B1y C1y D1y) 4)
                                     (/ (+ A1z B1z C1z D1z) 4))
                              (point (/ (+ A1x B1x A2x B2x) 4)
                                     (/ (+ A1y B1y A2y B2y) 4)
                                     (/ (+ A1z B1z A2z B2z) 4))
                              (point (/ (+ C1x B1x C2x B2x) 4)
                                     (/ (+ C1y B1y C2y B2y) 4)
                                     (/ (+ C1z B1z C2z B2z) 4))))))))

