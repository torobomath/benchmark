;; DOMAIN:    Geometry, polygons
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1982, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; The diagonals $AC$ and $CE$ of the regular hexagon $ABCDEF$ are divided by the
;; inner points $M$ and $N$, respectively, so that
;; ¥[
;; ¥frac{AM}{AC} = ¥frac{CN}{CE} = r.
;; ¥]
;; Determine $r$ if $B$, $M$, and $N$ are collinear.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive p
  (Find (r)
  (exists (A B C D E F M N)
    (&& (is-regular-polygon (polygon (list-of A B C D E F)))
        (on M (seg A C))
        (on N (seg C E))
            (! (= M A))
            (! (= M C))
            (! (= N C))
            (! (= N E))
        (= (/ (length-of (seg A M))
                  (length-of (seg A C)))
               (/ (length-of (seg C N))
                  (length-of (seg C E))))
        (= (/ (length-of (seg A M))
                  (length-of (seg A C)))
               r)
        (colinear B M N)))))

(def-answer p (PLam r (= r (/ 1 3))))

