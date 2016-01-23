;; DOMAIN:    Number Theory, number theory
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1986, Problem 1
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-18
;;
;; <PROBLEM-TEXT>
;; Let $d$ be any positive integer not equal to $2$, $5$, or $13$. Show that one can
;; find distinct $a$, $b$ in the set $¥{2, 5, 13, d¥}$ such that $ab - 1$ is not a
;; perfect square.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
   (forall (d)
     (-> (&& (> d 0)
               (! (= d 2))
               (! (= d 5))
               (! (= d 13)))
           (exists (a b)
              (&& (member a (list-of 2 5 13 d))
                  (member b (list-of 2 5 13 d))
                  (! (= a b))
                  (! (is-square-number (- (* a b) 1)))))))))

