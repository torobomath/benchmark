;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2011, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2013-11-21
;;
;; <PROBLEM-TEXT>
;; Assume that the cubic function $f(x)=a x^3+b x^2+c x+d$ satisfies all
;; the three conditions, $f(1)=1$, $f(-, 1)=-1$, and
;; $\int_{-1}^1(b x^2 + c x + d)dx=1$. Find $f(x)$ that give the minimum
;; value of the definite integral
;; $I=\int_{-1}^{\frac{1}{2}}\{f^{\prime\prime }(x)\}^2 dx$@ and the
;; value of $I$ that gives the minimum value, where
;; $f^{\prime\prime }(x)$ is a derivative of $f^{\prime }(x)$.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (f)
        (exists (I_set I_min)
                (&& (minimum I_set I_min)
                    (= I_set (set-by-def (PLam I
                                               (exists (a b c d f)
                                                       (&& (= f (poly-fun (list-of d c b a)))
                                                           (= (funapp f 1) 1)
                                                           (= (funapp f -1) -1)
                                                           (= (integral (Lam x (+ (* b (^ x 2))
                                                                                  (* c x)
                                                                                  d))
                                                                        -1
                                                                        1)
                                                              1)
                                                           (= I (integral (Lam x (^ (funapp (derivative (derivative f)) x) 2))
                                                                          -1
                                                                          (/ 1 2))))))))
                    (= f (poly-fun (list-of d c b a)))
                    (= (funapp f 1) 1)
                    (= (funapp f -1) -1)
                    (= (integral (Lam x (+ (* b (^ x 2))
                                           (* c x)
                                           d))
                                 -1
                                 1)
                       1)
                    (= I_min (integral (Lam x (^ (funapp (derivative (derivative f)) x) 2))
                                       -1
                                       (/ 1 2)))))))

(def-directive
  p2
  (Find (I_min)
        (exists (I_set)
                (&& (minimum I_set I_min)
                    (= I_set (set-by-def (PLam I
                                               (exists (a b c d f)
                                                       (&& (= f (poly-fun (list-of d c b a)))
                                                           (= (funapp f 1) 1)
                                                           (= (funapp f -1) -1)
                                                           (= (integral (Lam x (+ (* b (^ x 2))
                                                                                  (* c x)
                                                                                  d))
                                                                        -1
                                                                        1)
                                                              1)
                                                           (= I (integral (Lam x (^ (funapp (derivative (derivative f)) x) 2))
                                                                          -1
                                                                          (/ 1 2))))))))))))

(def-answer p1 (PLam f (&& (= f (poly-fun (list-of (/ 3 4) (/ 5 4) (- (/ 3 4)) (- (/ 1 4)))))
                           (= a (- (/ 1 4)))
                           (= b (- (/ 3 4)))
                           (= c (/ 5 4))
                           (= d (/ 3 4)))))

(def-answer p2 (PLam I_min (= I_min (/ 81 32))))

