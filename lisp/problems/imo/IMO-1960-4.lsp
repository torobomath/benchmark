;; DOMAIN:    Geometry, triangles
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 4
;; SCORE:     5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2015-01-29
;;
;; <PROBLEM-TEXT>
;; Construct triangle $ABC$, given $h_a$, $h_b$ (the altitudes from $A$ and $B$)
;; and $m_a$, the median from vertex $A$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (X)
        (exists (A B C)
                (&& (is-triangle A B C)
                    (= X (triangle A B C))
                    (> ha 0)
                    (> hb 0)
                    (> ma 0)
                    (= ha (point-shape-distance A (line B C)))
                    (= hb (point-shape-distance B (line A C)))
                    (= ma (distance A (midpoint-of B C)))))))

(def-answer p (PLam X (exists (A B C M G H T)
                              (&& (= X (triangle A B C))
                                  (= (distance A M) ma)
                                  (= G (circle (midpoint-of A M) (/ ma 2)))
                                  (intersect G (circle A ha) H)
                                  (intersect G (circle M (/ hb 2)) T)
                                  (intersect (line H M) (line A T) C)
                                  (= (distance M B) (distance M C))))))

