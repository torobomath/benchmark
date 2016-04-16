;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2003, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-23
;;
;; <PROBLEM-TEXT>
;; Consider the following condition for the function $f(x)= a x^2 + c$,
;; where the real numbers $a$ and $c$ are coefficients: (*)
;; $f(x)\ge(x + 1)^2$ is true in the range of $0\le x\le 1$.
;;
;; (1) When $a\ge 2$, prove that the minimum value of $c$ that satisfies
;; the condition (*) is $\frac{a}{a-1}$.
;;
;; (2) When $a\le 2$, prove that the minimum value of $c$ that satisfies
;; the condition (*) is $4 - a$.
;;
;; (3) When the function $f(x)$ satisfies the condition (*), find the
;; values of $a$ and $c$ that gives the minimum value of the definite
;; integral $\int_0^1 f(x)d x$ and the value of the definite integral at
;; that time.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Show (forall (a)
                (-> (>= a 2)
                    (exists (c_set)
                            (&& (= c_set (set-by-def (PLam c (exists (f)
                                                                     (&& (= f (poly-fun (list-of c 0 a)))
                                                                         (forall (x)
                                                                                 (-> (&& (<= 0 x)
                                                                                         (<= x 1))
                                                                                     (>= (funapp f x)
                                                                                         (^ (+ x 1) 2)))))))))
                                (minimum c_set (/ a (- a 1)))))))))

(def-directive
  p2
  (Show (forall (a)
                (-> (<= a 2)
                    (minimum (set-by-def (PLam c (exists (f)
                                                         (&& (= f (poly-fun (list-of c 0 a)))
                                                             (forall (x)
                                                                     (-> (&& (<= 0 x)
                                                                             (<= x 1))
                                                                         (>= (funapp f x)
                                                                             (^ (+ x 1) 2))))))))
                             (- 4 a))))))

(def-directive
  p3
  (Find (ans)
        (exists (a_opt c_opt I_min I_set fmin)
                (&& (= ans (list-of a_opt c_opt I_min))
                    (minimum I_set I_min)
                    (= fmin (poly-fun (list-of c_opt 0 a_opt)))
                    (forall (x) (->
                                  (&& (<= 0 x) (<= x 1))
                                  (>= (funapp fmin x) (^ (+ x 1) 2))))
                    (= I_set (set-by-def (PLam I (exists (a c f)
                                                         (&& (= f (poly-fun (list-of c 0 a)))
                                                             (forall (x)
                                                                     (-> (&& (<= 0 x)
                                                                             (<= x 1))
                                                                         (>= (funapp f x)
                                                                             (^ (+ x 1) 2))))
                                                             (= I (integration f 0 1)))))))
                    (= I_min (integration fmin 0 1))))))

(def-answer p3 (PLam ans (= ans (list-of (+ 1 (sqrt 3)) (/ (+ 1 (sqrt 3)) (sqrt 3)) (* (/ 1 3) (+ (* 2 (sqrt 3)) 4))))))

