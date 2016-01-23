;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 2005, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; Determine all positive integers relatively prime to all the terms
;; of the infinite sequence
;; a_n = 2^n + 3^n + 6^n - 1, n >= 1.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (a)
        (forall (n)
                (-> (>= n 1)
                    (= (gcd a (+ (^ 2 n) (^ 3 n) (^ 6 n) -1)) 1)))))

(def-answer p (PLam a (= a 1)))

