;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1992, Problem 1
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-11-13
;;
;; <PROBLEM-TEXT>
;; Find all integers $a$, $b$, $c$ with $1 < a < b < c$ such that
;; ¥begin{center}
;; $(a - 1)(b - 1)(c - 1)$ is a divisor of $abc - 1$.
;; ¥end{center}
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
   (Find (answer)
      (exists (a b c)
         (&& (= answer (list-of a b c))
             (< 1 a) (< a b) (< b c)
             (is-divisible-by (- (* a b c) 1)
                              (* (- a 1) (- b 1) (- c 1)))))))

(def-answer p
  (PLam answer
    (|| (= answer (list-of 2 4 8))
      (= answer (list-of 3 5 15)))))

