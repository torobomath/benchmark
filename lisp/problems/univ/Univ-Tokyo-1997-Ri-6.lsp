;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1997, Science Course, Problem 6
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a real number.
;;
;; (1) Find the range of $a$ such that there exist $2$ straight lines
;; that are in contact with both the curve $y=\frac{8}{27} x^3$ and the
;; parabola $y=(x+a)^2$, in addition to the $x$ axis.
;;
;; (2) When $a$ is in the range found in (1), represent the area $S$ of
;; the region enclosed by the $2$ tangents and the parabola $y=(x+a)^2$
;; using $a$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (a)
        (exists (G H)
                (&& (= G (graph-of (fun (Lam x (* (/ 8 27) (^ x 3))))))
                    (= H (graph-of (fun (Lam x (^ (+ x a) 2)))))
                    (exists (l1 l2)
                            (&&  (! (= l1 l2))
                                (! (= l1 (x-axis)))
                                (! (= l2 (x-axis)))
                                (line-type l1)
                                (line-type l2)
                                (tangent l1 G)
                                (tangent l1 H)
                                (tangent l2 G)
                                (tangent l2 H)))))))

(def-directive
  p2
  (Find (S)
        (exists (l1 l2 H)
                (&& (= S (area-of (shape-enclosed-by (list-of l1 l2 H))))
                    (= H (graph-of (fun (Lam x (^ (+ x a) 2)))))
                    (exists (G p1 p2 q1 q2)
                            (&& (= G (graph-of (fun (Lam x (* (/ 8 27) (^ x 3))))))
                                (= l1 (line p1 q1))
                                (= l2 (line p2 q2))
                                (! (= l1 l2))
                                (! (= l1 (x-axis)))
                                (! (= l2 (x-axis)))
                                (tangent l1 G)
                                (tangent l1 H)
                                (tangent l2 G)
                                (tangent l2 H)))))))

(def-answer p1 (PLam a (|| (&& (< (- (/ 1 2)) a) (< a 0))
                           (< 0 a))))

(def-answer p2 (PLam S (= S (* (/ 16 3) (^ (+ (* 2 a) 1) (/ 3 2))))))

