;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-14
;;
;; <PROBLEM-TEXT>
;; For $t$ in the range of $0\le t\le 2$, let $g_1(t)$ and $g_2(t)$ be
;; the maximum and minimum real solutions of the equation
;; $x^4-2 x^2-1+t=0$, respectively. Find the value of
;; $\int_0^2(g_1(t)- g_2(t))dt$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (I)
        (exists (g1 g2)
                (&& (forall (t)
                            (-> (&& (<= 0 t)
                                    (<= t 2))
                                (exists (f)
                                        (&& (= f (poly-fun (list-of (- t 1) 0 -2 1)))
                                            (maximum (set-by-def (PLam t (= (funapp f t) 0)))
                                                     (funapp g1 t))
                                            (minimum (set-by-def (PLam t (= (funapp f t) 0)))
                                                     (funapp g2 t))
                    (= I (integral (Lam t (- (funapp g1 t)
                                             (funapp g2 t)))
                                   0
                                   2))))))))))

(def-answer p (PLam I (= I (* (/ 8 15)
                              (+ (* (+ 4 (sqrt 2))
                                    (sqrt (+ 1 (sqrt 2))))
                                 2)))))

