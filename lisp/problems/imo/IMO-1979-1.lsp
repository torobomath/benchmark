;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1979, Problem 1
;; SCORE:     6
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-19
;;
;; <PROBLEM-TEXT>
;; Let $p$ and $q$ be natural numbers such that\[
;; \frac{p}{q} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \cdots - \frac{1}{1318} + \frac{1}{1319}.
;; \]Prove that $p$ is divisible by $1979$.
;; </PROBLEM-TEXT>

(namespace rat)

(def-directive
  p
  (Show (forall (p q)
                (-> (= (ratio p q)
                       (sum (map (Lam n (* (^ (int->rat -1) (int.+ n 1)) (ratio 1 n)))
                                 (iota 1 1319))))
                    (int.is-divisible-by p 1979)))))

