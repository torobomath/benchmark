;; DOMAIN:    Algebra, functional equations
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 2013, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-10-24
;;
;; <PROBLEM-TEXT>
;; Let $Q_{>0}$ be the set of positive rational numbers.
;; Let $f : Q_{>0} \rightarrow R$ be a function satisfying the following three conditions:
;; (i)   for all $x$, $y$ in $Q_{>0}$, we have $f(x)f(y) \geq f(xy)$;
;; (ii)  for all $x$, $y$ in $Q_{>0}$, we have $f(x + y) \geq f(x) + f(y)$;
;; (iii) there exists a rational number $a > 1$ such that $f(a) = a$.
;; Prove that $f(x) = x$ for all $x$ in $Q_{>0}$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show
   (forall (f)
           (-> (&& (forall (x y)
                           (-> (&& (is-rational x)
                                   (is-rational y)
                                   (< 0 x)
                                   (< 0 y))
                               (&& (>= (* (funapp f x) (funapp f y))
                                       (funapp f (* x y)))
                                   (>= (funapp f (+ x y))
                                       (+ (funapp f x)
                                          (funapp f y))))))
                   (exists (a)
                           (&& (is-rational a)
                               (> a 1)
                               (= (funapp f a) a))))
               (forall (x)
                       (-> (&& (is-rational x)
                               (< 0 x))
                           (= (funapp f x) x)))))))

