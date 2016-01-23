;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-15
;;
;; <PROBLEM-TEXT>
;; Define the function $f(t)$ as $f(t)= 1 + 2 a t + b(2 t^2 - 1)$. Draw
;; the range of the point $(a, b)$ whose coordinates are $a$ and $b$
;; such that $f(t)\ge 0$ is true for all the values of $t$ in the
;; interval $- 1\le t\le 1$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (ab)
        (exists (f a b)
                (&& (= f (fun (Lam t (+ 1 (* 2 a t) (* b (- (* 2 (^ t 2)) 1))))))
                    (forall (t)
                            (-> (&& (<= -1 t)
                                    (<= t 1))
                                (>= (funapp f t) 0)))
                    (= ab (list-of a b))))))

(def-answer p (PLam ab (exists (a b) (&&
  (= ab (list-of a b))
  (||
    (<= (+ (^ a 2) (* 2 (^ b 2)) (- (* 2 b))) 0)
    (&& (>= b (- (+ (* 2 a) 1))) (>= b (- (* 2 a) 1)) (<= b (/ 1 3)))
  )))))

