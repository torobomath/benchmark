;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1997, Problem 5
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Find all pairs $(a, b)$ of integers $a$, $b ¥ge 1$ that satisfy the equation
;; ¥[
;; a^{b^2} = b^a.
;; ¥]
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (ab)
        (exists (a b)
                (&& (<= 1 a)
                    (<= 1 b)
                    (= (^ a (^ b 2))
                       (^ b a))
                    (= ab (list-of a b))))))

(def-answer p
  (PLam ab (||
       (= ab (list-of 1 1))
       (= ab (list-of 16 2))
       (= ab (list-of 27 3))
       )))

