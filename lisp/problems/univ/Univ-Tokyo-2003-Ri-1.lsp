;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2003, Science Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-15
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$, and $c$ be real numbers, and assume that $a\not= 0$.
;; Assume that the quadratic function $f(x)=a x^2+b x+c$ satisfies the
;; following conditions (A) and (B): For all the values of $x$ that
;; satisfy (A) $f(- 1)=-1, f(1)=1$ and (B) $-1\le x\le 1$,
;; $f(x)\le 3 x^2-1$ is true. Then, find the range of the possible value
;; of the integral $I=\int_{-1}^1(f^{\prime }(x))^2 dx$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (I_set) (= I_set (set-by-def (PLam I  (exists (a b c f)
                                                    (&& (= f (poly-fun (list-of c b a)))
                                                        (= (funapp f -1) -1)
                                                        (= (funapp f 1) 1)
                                                        (forall (x)
                                                                (-> (&& (<= -1 x)
                                                                        (<= x 1))
                                                                    (<= (funapp f x)
                                                                        (- (* 3 x x) 1))))
                                                        (= I (integral (Lam x (^ (funapp (derivative f) x) 2)) -1 1)))))))))

(def-answer p (PLam I_set (= I_set (set-by-def (PLam I (&& (>= I (/ (- 44 (* 16 (sqrt 3)))
                                                                    3))))))))

