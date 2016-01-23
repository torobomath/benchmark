;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1989, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-13
;;
;; <PROBLEM-TEXT>
;; Consider the following two parabolas for $a > 0$:
;;
;; $C_1 : y = x^2 +\frac{1}{a^2}$
;;
;; $C_2 : y = -(x-a)^2$
;;
;; (1) Prove that there always exist $2$ straight lines that are in
;; contact with both $C_1$ and $C_2$.
;;
;; (2) Find the minimum value of the area $S(a)$ of the quadrilateral
;; defined by the four points determined in (1).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Show (forall (a)
                (-> (> a 0)
                    (exists (C1 C2)
                            (&& (= C1 (graph-of (fun (Lam x (+ (^ x 2) (/ 1 (^ a 2)))))))
                                (= C2 (graph-of (fun (Lam x (- (^ (- x a) 2))))))
                                (exists (p1 p2 q1 q2 l m)
                                        (&& (= l (line p1 p2))
                                            (= m (line q1 q2))
                                            (! (= l m))
                                            (tangent l C1)
                                            (tangent l C2)
                                            (tangent m C1)
                                            (tangent m C2)))))))))

(def-directive
  p2
  (Find (S_min)
        (exists (S_set)
                (&& (= S_set (set-by-def (PLam S
                                               (exists (a C1 C2)
                                                       (&& (> a 0)
                                                           (= C1 (graph-of (fun (Lam x (+ (^ x 2) (/ 1 (^ a 2)))))))
                                                           (= C2 (graph-of (fun (Lam x (- (^ (- x a) 2))))))
                                                           (exists (p1 p2 q1 q2 l m)
                                                                   (&& (= l (line p1 p2))
                                                                       (= m (line q1 q2))
                                                                       (tangent l C1 p1)
                                                                       (tangent l C2 p2)
                                                                       (tangent m C1 q1)
                                                                       (tangent m C2 q2)
                                                                       (= S (area-of (square p1 p2 q1 q2))))))))))
                    (minimum S_set S_min)))))

(def-answer p2 (PLam S_min (= S_min (* 4 (^ 2 (/ 1 4))))))

