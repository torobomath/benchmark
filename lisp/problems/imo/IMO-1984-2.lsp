;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1984, Problem 2
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; Find one pair of positive integers $a$ and $b$ such that:
;; ¥begin{flushleft}
;; (i) $ab(a + b)$ is not divisible by $7$;¥¥
;; (ii) $(a + b)^7 - a^7 - b^7$ is divisible by $7^7$.
;; ¥end{flushleft}
;; Justify your answer.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (exists (a b) (&&
          (> a 0)
          (> b 0)
          (! (is-divisible-by (* a b (+ a b)) 7))
          (is-divisible-by (- (- (^ (+ a b) 7) (^ a 7)) (^ b 7)) (^ 7 7))))))

