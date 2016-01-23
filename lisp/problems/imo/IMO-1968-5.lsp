;; DOMAIN:    Algebra, functions
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1968, Problem 5
;; SCORE:     7
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; Let $f$ be a real-valued function defined for all real numbers $x$ such that, for
;; some positive constant $a$, the equation\[
;; f(x + a) = \frac{1}{2} + \sqrt{f(x) - [f(x)]^2}
;; \]holds for all $x$.
;; (a) Prove that the function $f$ is periodic (i.e., there exists a
;; positive number $b$ such that $f(x + b) = f(x)$ for all $x$).
;; (b) For $a = 1$, give an example of a non-constant function with the required
;; properties.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Show
    (forall (f)
      (-> (exists (a)
            (forall (x)
              (= (funapp f (+ x a))
                 (+ (/ 1 2)
                    (sqrt (- (funapp f x)
                             (^ (funapp f x) 2)))))))
          (exists (b)
            (forall (x)
               (= (funapp f (+ x b))
                  (funapp f x))))))))

;;@ the directive is 'give an example', not 'find all', in the original problem

(def-directive
  p2
  (Find (f)
        (&& (forall (x)
                    (= (funapp f (+ x 1))
                       (+ (/ 1 2)
                          (sqrt (- (funapp f x)
                                   (^ (funapp f x) 2))))))
            (! (exists (y)
                       (forall (x)
                               (= (funapp f x) y)))))))

(def-answer p2
  (PLam f (= f (fun (Lam x (/ (+ 1 (abs (cos (/ (* (Pi) x) 2)))) 2))))
   )
)

