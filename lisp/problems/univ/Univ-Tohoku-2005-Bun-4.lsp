;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2005, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; The two curves $C$: $y = - x^2$ and $D$: $y =(x - a)^2 + b$ are in
;; contact with each other at a point. Find the value of the real
;; numbers $a$ and $b$ that give the minimum value of the area $S$ of
;; the region enclosed by the curves $D$ and $E$:
;; $y =\frac{1}{2}(x - 1)^2 + 1$ and $S$ at that time.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (abS)
        (exists (S_set S_min a_opt b_opt D_opt C E)
                (&& (= abS (list-of a_opt b_opt S_min))
                    (minimum S_set S_min)
                    (= C (graph-of (fun (Lam x (- (^ x 2))))))
                    (= E (graph-of (fun (Lam x (+ (* (/ 1 2) (^ (- x 1) 2)) 1)))))
                    (= S_set (set-by-def (PLam S (exists (a b D)
                                                         (&& (= D (graph-of (fun (Lam x (+ (^ (- x a) 2) b)))))
                                                             (tangent C D)
                                                             (= S (area-of (shape-enclosed-by (list-of D E)))))))))
                    (= D_opt (graph-of (fun (Lam x (+ (^ (- x a_opt) 2) b_opt)))))
                    (tangent C D_opt)
                    (= S_min (area-of (shape-enclosed-by (list-of D_opt E))))))))

(def-answer p (PLam abS (= abS (list-of (/ 2 3) (/ -2 9) (* (/ 32 27) (sqrt 6))))))

