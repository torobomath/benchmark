;; DOMAIN:    Geometry, sphere and other surfaces
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1963, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; Point $A$ and segment $BC$ are given. Determine the locus of points in space
;; which are vertices of right angles with one side passing through $A$, and the
;; other side intersecting the segment $BC$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Find (P)
  (exists (A B C X)
    (&& (= A (point Ax Ay Az))
            (= B (point Bx By Bz))
            (= C (point Cx Cy Cz))
            (! (= B C))
            (! (on A (seg B C)))
            (! (= X A))
            (on X (seg B C))
        (= (rad-of-angle (angle A P X)) (* 90 (Degree)))))))

(def-answer
  p
  (PLam P
    (exists (A B C rB2 rC2)
    (&& (= A (point Ax Ay Az))
            (= B (point Bx By Bz))
            (= C (point Cx Cy Cz))
            (! (= B C))
            (! (on A (seg B C)))
            (= rB2 (/ (distance A B) 2))
            (= rC2 (/ (distance A C) 2))
            (! (= P A))
            (|| (<= (distance P (midpoint-of A B)) rB2)
                (<= (distance P (midpoint-of A C)) rC2))
            (|| (>= (distance P (midpoint-of A B)) rB2)
                (>= (distance P (midpoint-of A C)) rC2))))))

