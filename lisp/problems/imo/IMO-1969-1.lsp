;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1969, Problem 1
;; SCORE:     5
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; Prove that there are infinitely many natural numbers $a$ with the following
;; property: the number $z = n^4 + a$ is not prime for any natural number $n$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
 p
 (Show
   (forall (N)
     (exists (a)
       (&& (< N a)
           (forall (n)
             (-> (is-natural-number n)
                 (! (is-prime (+ (^ n 4) a))))))))))

