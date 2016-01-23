;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1988, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-18
;;
;; <PROBLEM-TEXT>
;; Consider two coplanar circles of radii $R$ and $r$ ($R > r$) with the same
;; center. Let $P$ be a fixed point on the smaller circle and $B$ a variable point
;; on the larger circle. The line $BP$ meets the larger circle again at $C$. The
;; perpendicular $l$ to $BP$ at $P$ meets the smaller circle again at $A$. (If $l$
;; is tangent to the circle at $P$ then $A = P$.)
;; ¥begin{flushleft}
;; (i) Find the set of values of $BC^2 + CA^2 + AB^2$.¥¥
;; (ii) Find the locus of the midpoint of $AB$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p1
  (Find (s)
  (exists (O K1 K2 P A B C)
    (&& (= K1 (circle O R))
        (= K2 (circle O r))
            (> r 0)
        (> R r)
        (on P K2)
        (on B K1)
        (on C K1)
            (intersect (line B P) K1 C)
            (! (= B C))
        (on A K2)
            (|| (&& (perpendicular (line B P) (line A P))
                    (! (= A P)))
                (&& (on O (line B P))
                    (= A P)))
            (= s (+ (^ (length-of (seg B C)) 2)
                    (^ (length-of (seg A C)) 2)
                    (^ (length-of (seg B A)) 2)))))))

(def-answer p1 (PLam s (&&
  (> R r) (> r 0)
  (= s (+ (* 6 (^ R 2)) (* 2 (^ r 2))))
)))

(def-directive p2
  (Find (fU)
  (= fU (shape-of-cpfun
            (PLam U
           (exists (O K1 K2 P A B C)
            (&& (= O (point Ox Oy))
                    (= P (point Px Py))
                    (= K1 (circle O R))
                    (= K2 (circle O r))
                    (> r 0)
                    (> R r)
                    (on P K2)
                    (on B K1)
                    (on C K1)
                    (intersect (line B P) K1 C)
                    (! (= B C))
                    (on A K2)
                    (|| (&& (perpendicular (line B P) (line A P))
                            (! (= A P)))
                        (&& (on O (line B P))
                            (= A P)))
                    (= U (midpoint-of A B)))))))))

(def-answer p2 (PLam fU (&&
  (> R r) (> r 0)
  (= fU (circle (midpoint-of (point Ox Oy) (point Px Py)) (/ R 2)))
)))

