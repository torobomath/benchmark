;; DOMAIN:    Number Theory, number theory
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1975, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-22
;;
;; <PROBLEM-TEXT>
;; When $4444^{4444}$ is written in decimal notation, the sum of its digits is $A$.
;; Let $B$ be the sum of the digits of $A$. Find the sum of the digits of $B$.
;; ($A$ and $B$ are written in decimal notation.)
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (n)
  (exists (A B)
    (&& (= A (sum (int2decimal (^ 4444 4444))))
        (= B (sum (int2decimal A)))
        (= n (sum (int2decimal B)))))))

(def-answer p (PLam n (= n 7)))

