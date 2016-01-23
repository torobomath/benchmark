;; DOMAIN:    Geometry, hexahedrons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1978, Problem 2
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; $P$ is a given point inside a given sphere. Three mutually perpendicular rays
;; from $P$ intersect the sphere at points $U$, $V$, and $W$; $Q$ denotes the vertex
;; diagonally opposite to $P$ in the parallelepiped determined by $PU$, $PV$, and $PW$.
;; Find the locus of $Q$ for all such triads of rays from $P$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive p
  (Find (Q)
  (exists (P U V W S U2 V2 W2)
    (&& (sphere-type S)
        (= (center-of S) (point cx cy cz))
        (= r (radius-of S))
        (point-inside-of P S)
        (= P (point px py pz))
        (on U S)
        (on V S)
        (on W S)
        (perpendicular (line P U) (line P V))
        (perpendicular (line P W) (line P V))
        (perpendicular (line P U) (line P W))
        (is-parallelopiped P U V2 W V W2 Q U2)))))

(def-answer p (PLam Q (on Q (sphere (point cx cy cz) (sqrt (- (* 3 (^ r 2)) (distance^2 (point cx cy cz) (point px py pz))))))))

