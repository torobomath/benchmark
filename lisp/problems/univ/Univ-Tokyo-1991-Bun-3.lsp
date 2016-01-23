;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 3
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-15
;;
;; <PROBLEM-TEXT>
;; Draw five circles with the radius $r$ and the centers at the vertices
;; $A$, $B$, $C$, $D$, and the common point $E$ of the diagonals of the
;; rectangle whose two side lengths are $1$ and $a$. When the radius $r$
;; is made maximum provided that any two circles have no common regions
;; on the inside, let $S(a)$ be the area cut out of the rectangle by the
;; five circles. Draw a rough graph of the function $\frac{S(a)}{a}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
    p
    (Draw (G)
        (= G (set-of-cfun (Lam a (PLam S (exists (A B C D E r) (&&
            (< 0 a)
            (is-rectangle A B C D)
            (= (distance A B) 1)
            (= (distance A C) a)
            (intersect (line A C) (line B D) E)
            (< 0 r)
            (maximum
                (set-by-def (PLam r0 (&&
                    (< 0 r0)
                    (combinatorial-all
                        (Lam P (PLam Q (is-empty (intersection (inner-part-of (circle P r0)) (inner-part-of (circle Q r0))))))
                        (list-of A B C D E)
                    )
                )))
                r
            )
            (= S (* (/ 1 a) (area-of (shape-of-cpfun (char-fun-of (intersection
                (with-boundary (square A B C D))
                (union (list-of
                    (with-boundary (circle A r))
                    (with-boundary (circle B r))
                    (with-boundary (circle C r))
                    (with-boundary (circle D r))
                    (with-boundary (circle E r))
                ))
            ))))))
        ))))))
    )
)

(def-answer p (set-of-cfun (Lam a (PLam S (||
  (&& (< 0 a) (<= a (/ (sqrt 3) 3))
    (= S (/ (* (Pi) a) 2)))
  (&& (<= (/ (sqrt 3) 3) a) (<= a (sqrt 3))
    (= S (/ (* (Pi) (+ 1 (^ a 2))) (* 8 a))))
  (&& (<= (sqrt 3) a)
    (= S (/ (Pi) (* 2 a)))))))))

