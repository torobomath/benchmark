;; DOMAIN:    Number Theory, modular arithmetic
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1964, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-03
;;
;; <PROBLEM-TEXT>
;; (a) Find all positive integers $n$ for which $2^n - 1$ is divisible by $7$.
;; (b) Prove that there is no positive integer $n$ for which $2^n + 1$
;; is divisible by $7$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p1
  (Find (n)
  (&& (int.> n 0)
      (is-divisible-by (- (^ 2 n) 1) 7)
   )
   )
)

(def-directive p2
  (Show
   (forall (n)
     (-> (int.> n 0)
         (! (is-divisible-by (+ (^ 2 n) 1) 7))
         )
  )
   )
)

(def-answer p1 (PLam n (&&
             (int.> n 0)
             (is-divisible-by n 3))))

