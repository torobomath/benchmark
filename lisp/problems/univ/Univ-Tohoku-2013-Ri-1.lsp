;; DOMAIN:    Numbers and Algebraic Expressions
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2013, Science Course, Problem 1
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Let $k$ be a real number. For the cubic equation
;; $f(x)= x^3 - k x^2 - 1$, let ${\alpha}$, ${\beta}$, and ${\gamma}$ be
;; the three solutions of the equation $f(x)= 0$. Assume that $g(x)$ is
;; a cubic equation of which the coefficient of $x^3$ is $1$, and let
;; ${\alpha} {\beta}$, ${\beta} {\gamma}$, and ${\gamma} {\alpha}$ be
;; the three solutions of the equation $g(x)= 0$.
;;
;; (1) Represent $g(x)$ using $k$.
;;
;; (2) Find the value of $k$ such that the equations $f(x)= 0$ and
;; $g(x)= 0$ have common solutions.
;; </PROBLEM-TEXT>

(def-directive
  p1
  (Find (gc)
    (exists (c0 c1 c2)
      (let ((fc (list-of (- 1) 0 (- k) 1)))
        (&&
          (= gc  (list-of c0 c1 c2 1))
          (exists (alpha beta gamma)
           (&&
           (are-solutions-of  (list-of alpha beta gamma) (poly-equation fc))
           (are-solutions-of  (list-of (* alpha beta) (* beta gamma) (* gamma alpha))
                      (poly-equation gc))
           ))
        )))))

(def-directive
  p2
  (Find (k)
    (exists (c0 c1 c2)
      (let
        (
          (fc (list-of (- 1) 0 (- k) 1))
          (gc (list-of c0 c1 c2 1))
        )
        (&&
          (exists (alpha beta gamma)
           (&&
           (are-solutions-of  (list-of alpha beta gamma) (poly-equation fc))
           (are-solutions-of  (list-of (* alpha beta) (* beta gamma) (* gamma alpha))
                      (poly-equation gc))
           (exists (x)
             (&&
             (= (funapp (poly-fun fc) x) 0)
             (= (funapp (poly-fun gc) x) 0)
             )
           ))
        )))))
)

(def-answer p1 (PLam gc (= gc (list-of -1 k 0 1))))

(def-answer p2 (PLam k (|| (= k 0) (= k -2))))

(def-answer a1 (PLam g (= g (poly-fun (list-of -1 k 0 1)))))

(def-answer a2 (PLam k (|| (= k 0) (= k -2))))

