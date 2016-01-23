;; DOMAIN:    Geometry, polygons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1977, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Equilateral triangles $ABK$, $BCL$, $CDM$, $DAN$ are constructed inside the
;; square $ABCD$. Prove that the midpoints of the four segments $KL$, $LM$, $MN$, $NK$
;; and the midpoints of the eight segments $AK$, $BK$, $BL$, $CL$, $CM$, $DM$, $DN$, $AN$
;; are the twelve vertices of a regular dodecagon.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (A B C D M N L K )
     (-> (&& (is-square A B C D)
               (is-equilateral-triangle A B K)
               (is-equilateral-triangle B C L)
               (is-equilateral-triangle C D M)
               (is-equilateral-triangle D A N)
               (point-inside-of M (square A B C D))
               (point-inside-of N (square A B C D))
               (point-inside-of K (square A B C D))
               (point-inside-of L (square A B C D)))
           (let* ((P1 (midpoint-of K L))
                  (P2 (midpoint-of L M))
                  (P3 (midpoint-of M N))
                  (P4 (midpoint-of N K))
                  (P5 (midpoint-of A K))
                  (P6 (midpoint-of B K))
                  (P7 (midpoint-of B L))
                  (P8 (midpoint-of C L))
                  (P9 (midpoint-of C M))
                  (P10 (midpoint-of D M))
                  (P11 (midpoint-of D N))
                  (P12 (midpoint-of A N)))
             (is-regular-polygon (polygon (list-of P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12)))
             )
           )
     )
   )
)

