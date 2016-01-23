;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Consider triangle $P_1P_2P_3$ and a point $P$ within the triangle.
;; Lines $P_1 P$, $P_2 P$, $P_3 P$ intersect the opposite sides in points
;; $Q_1$, $Q_2$, $Q_3$ respectively. Prove that, of the numbers\[
;; \frac{P_1 P}{P Q_1}, \frac{P_2 P}{P Q_2}, \frac{P_3 P}{P Q_3}
;; \]at least one is $\leq 2$ and at least one is $\geq 2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Show
   (forall (P1 P2 P3 P Q1 Q2 Q3)
     (-> (&& (is-triangle P1 P2 P3)
               (point-inside-of P (triangle P1 P2 P3))
               (intersect (line P P1) (line P2 P3) Q1)
               (intersect (line P P2) (line P1 P3) Q2)
               (intersect (line P P3) (line P1 P2) Q3))
           (&& (|| (<= (/ (length-of (seg P P1)) (length-of (seg P Q1))) 2)
                   (<= (/ (length-of (seg P P2)) (length-of (seg P Q2))) 2)
                   (<= (/ (length-of (seg P P3)) (length-of (seg P Q3))) 2))
               (|| (>= (/ (length-of (seg P P1)) (length-of (seg P Q1))) 2)
                   (>= (/ (length-of (seg P P2)) (length-of (seg P Q2))) 2)
                   (>= (/ (length-of (seg P P3)) (length-of (seg P Q3))) 2)))))))

