;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-15
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a positive constant, and $C$ be the graph of the function
;; of $x$: $f(x)= x^3 - a x^2 - a^2 x$. Let $b$ be the value of $b$ that
;; gives the local maximum value of $f(x)$, then represent the area of
;; the region enclosed by $C$ and the tangent to $C$ at the point $C$
;; using $a$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (S)
        (&& (< 0 a)
            (exists (f C b l)
                    (&& (= f (poly-fun (list-of 0
                                                (- (^ a 2))
                                                (- a)
                                                 1)))
                        (= C (graph-of f))
                        (func-maximal f b (funapp f b))
                        (line-type l)
                        (tangent l C (point b (funapp f b)))
                        (= S (area-of (shape-enclosed-by (list-of l C)))))))))

(def-answer p (PLam S (= S (* (/ 4 3) (^ a 4)))))

