;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1977, Problem 5
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-23
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be positive integers. When $a^2 +b^2$ is divided by $a+b$, the
;; quotient is $q$ and the remainder is $r$. Find all pairs $(a, b)$ such that
;; $q^2 + r = 1977$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (ab)
  (exists (a b q r)
    (&& (= ab (list-of a b))
            (< 0 a)
            (< 0 b)
        (= q (div (+ (^ a 2) (^ b 2)) (+ a b)))
        (= r (mod (+ (^ a 2) (^ b 2)) (+ a b)))
        (= (+ (^ q 2) r) 1977)))))

(def-answer p (PLam ab (exists (ab1 ab2) (||
          (&& (= ab (list-of ab1 ab2))
        (= ab1 50)
        (= ab2 37))
          (&& (= ab (list-of ab1 ab2))
        (= ab1 50)
        (= ab2 7))
          (&& (= ab (list-of ab1 ab2))
        (= ab1 37)
        (= ab2 50))
          (&& (= ab (list-of ab1 ab2))
        (= ab1 7)
        (= ab2 50))))))

