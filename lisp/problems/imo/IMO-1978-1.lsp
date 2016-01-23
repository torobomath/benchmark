;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1978, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-20
;;
;; <PROBLEM-TEXT>
;; $m$ and $n$ are natural numbers with $1 \leq m < n$. In their decimal
;; representations, the last three digits of $1978^m$ are equal, respectively, to
;; the last three digits of $1978^n$. Find $m$ and $n$ such that $m + n$ has its least
;; value.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (mn)
  (exists (m n min)
    (&& (int.> n m)
        (int.> m 0)
        (= (mod (^ 1978 m) 1000) (mod (^ 1978 n) 1000))
        (= min (+ m n))
                    (= mn (list-of m n))
        (forall (m2 n2)
           (->  (&& (int.> n2 m2)
                                (int.> m2 0)
        (= (mod (^ 1978 m2) 1000) (mod (^ 1978 n2) 1000)))
          (<= min (+ m2 n2))))))))

(def-answer p (PLam mn (= mn (list-of 3 103))))

