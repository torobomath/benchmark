;; DOMAIN:    Number Theory, numeral systems
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1960, Problem 1
;; SCORE:     8
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-04
;;
;; <PROBLEM-TEXT>
;; Determine all three-digit numbers $N$ having the property that $N$ is divisible
;; by $11$, and $\frac{N}{11}$ is equal to the sum of the squares of the digits of $N$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (N)
    (exists (n1 n2 n3)
    (&& (<= 1 n1) (<= n1 9)
          (<= 0 n2) (<= n2 9)
          (<= 0 n3) (<= n3 9)
          (= N (+ (* 100 n1) (* 10 n2) n3))
        (is-divisible-by N 11)
        (= (div N 11) (+ (^ n1 2) (^ n2 2) (^ n3 2)))))))

(def-answer p (PLam N (|| (= N 550) (= N 803))))

