;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2007, Humanities Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-02-28
;;
;; <PROBLEM-TEXT>
;; In the coordinate space, let $l$ be the straight line passing through
;; the point $(3, 4, 0)$ and parallel to the vector $\vec{a}=(1, 1, 1)$,
;; and let $m$ be the straight line passing through the point
;; $(2, -, 1, 0)$ and parallel to the vector $\vec{b}=(1, -, 2, 0)$.
;; When the points $P$ and $Q$ freely move on the straight lines $l$ and
;; $m$, respectively, find the minimum length of the line segment $PQ$.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (x)
  (minimum (set-by-def (PLam d (exists (l m)
               (&& (line-type l)
             (line-type m)
             (on (point 3 4 0) l)
             (= (vec3d 1 1 1)
                (direction-vec l))
             (on (point 2 -1 0) m)
             (= (vec3d 1 -2 0)
                (direction-vec m))
             (exists (P Q)
               (&& (on P l)
                   (on Q m)
                   (= d
                (length-of (seg P Q)))))))))
     x)))

(def-answer p1 (PLam x (= x (/ (sqrt 14) 2))))

