;; DOMAIN:    Geometry, circle
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1990, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; Chords $AB$ and $CD$ of a circle intersect at a point $E$ inside the circle. Let
;; $M$ be an interior point of the segment $EB$. The tangent line at $E$ to the
;; circle through $D$, $E$, and $M$ intersects the lines $BC$ and $AC$ at $F$ and
;; $G$, respectively. If
;; ¥[
;; ¥frac{AM}{AB} = t,
;; ¥]
;; find
;; ¥[
;; ¥frac{EG}{EF}
;; ¥]
;; in terms of $t$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (ratio)
    (exists (c c1 A B C D E F G M)
           (&& (circle-type c)
               (on A c)
               (on B c)
               (on C c)
               (on D c)
               (! (= (seg A B) (seg C D)))
               (intersect (seg A B) (seg C D) E)
               (point-inside-of E c)
               (on M (seg E F))
               (! (= M E))
               (! (= M F))
               (circle-type c1)
               (on D c1)
               (on E c1)
               (on M c1)
               (tangent (line F G) c1 E)
               (on F (line B C))
               (on G (line A C))
               (= (* t (length-of (seg A B))) (length-of (seg A M)))
               (= (* ratio (length-of (seg E F))) (length-of (seg E G)))))))

(def-answer p (PLam ratio (= ratio (/ t (- 1 t)))))

