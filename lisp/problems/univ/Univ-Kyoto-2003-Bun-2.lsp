;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2003, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; Consider the parabola $C:y=x^2+x$ and the straight line $l:y=k x+k-1$
;; on the $xy$ plane. Answer the following questions:
;;
;; (1) Find the range of $k$ such that the parabola $C$ intersects with
;; the straight line $l$ at different two points.
;;
;; (2) Let $P$ and $Q$ be the $2$ intersections of the parabola $C$ and
;; the straight line $l$, let $L$ be the length of the line segment
;; $PQ$, and let $S$ be the area of the region enclosed by the line
;; segment $PQ$ and the parabola. When $k$ moves in the range found in
;; (1), find the range of the possible value of $\frac{S}{L^3}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (k)
        (exists (C l)
                (&& (= C (shape-of-cpfun (PLam p (= (y-coord p)
                                                    (+ (^ (x-coord p) 2)
                                                       (x-coord p))))))
                    (= l (shape-of-cpfun (PLam p (= (y-coord p)
                                                    (+ (* k (x-coord p))
                                                       k
                                                       -1)))))
                    (exists (P Q)
                            (&& (! (= P Q))
                                (intersect C l P)
                                (intersect C l Q)))))))

(def-directive
  p2
  (Find (SL3_set)
        (= SL3_set (set-by-def (PLam SL3 (exists (k C l P Q S L)
                                                 (&& (= C (shape-of-cpfun (PLam p (= (y-coord p)
                                                                                     (+ (^ (x-coord p) 2)
                                                                                        (x-coord p))))))
                                                     (= l (shape-of-cpfun (PLam p (= (y-coord p)
                                                                                     (+ (* k (x-coord p))
                                                                                        k
                                                                                        -1)))))
                                                     (! (= P Q))
                                                     (intersect C l P)
                                                     (intersect C l Q)
                                                     (= S (area-of (shape-enclosed-by (list-of (line P Q) C))))
                                                     (= L (distance P Q))
                                                     (= SL3 (/ S (^ L 3))))))))))

(def-answer p1 (PLam k (|| (< k -3) (< 1 k))))

(def-answer p2 (PLam SL3_set (= SL3_set (set-by-def (PLam SL3 (&& (< 0 SL3) (< SL3 (/ (sqrt 2) 24))))))))

