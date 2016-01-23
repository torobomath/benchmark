;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1999, Problem 4
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; Determine all pairs $(n, p)$ of positive integers such that
;; ¥begin{flushleft}
;; $p$ is a prime, ¥¥
;; $n$ not exceeded $2p$, and¥¥
;; $(p - 1)^n + 1$ is divisible by $n^{p-1}$.
;; ¥end{flushleft}
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (np)
        (exists (n p)
                (&& (< 0 n)
                    (< 0 p)
                    (= np (list-of n p))
                    (is-prime p)
                    (<= n (* 2 p))
                    (is-divisible-by (+ (^ (- p 1) n) 1)
                                     (^ n (- p 1)))))))

(def-answer p (PLam np (exists (n p) (&&
  (= np (list-of n p))
  (||
    (= n 1)
    (&& (= n 2) (= p 2))
    (&& (= n 3) (= p 3))
  )
))))

