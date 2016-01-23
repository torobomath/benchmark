;; DOMAIN:    Algebra, proofs of inequalities
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1973, Problem 3
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-22
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be real numbers for which the equation\[
;; x^4 +ax^3 +bx^2 +ax+1 = 0
;; \]has at least one real solution. For all such pairs $(a, b)$, find the minimum
;; value of $a^2 + b^2$.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (m)
  (exists (a b x)
    (&& (= (+ (^ x 4) (* a (^ x 3)) (* b (^ x 2)) (* a x) 1) 0)
        (= m (+ (^ a 2) (^ b 2)))
        (forall (a2 b2)
          (-> (exists (x2)
            (= (+ (^ x2 4) (* a2 (^ x2 3)) (* b2 (^ x2 2)) (* a2 x2) 1) 0))
             (>= (+ (^ a2 2) (^ b2 2)) m)))))))

(def-answer p (PLam m (= m (/ 4 5))))

