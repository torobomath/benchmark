;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1970, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-28
;;
;; <PROBLEM-TEXT>
;; Find the set of all positive integers $n$ with the property that the set
;; $\{n, n + 1, n + 2, n + 3, n + 4, n + 5\}$ can be partitioned into two sets such
;; that the product of the numbers in one set equals the product of the numbers
;; in the other set.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (n)
  (exists (S S1 S2)
    (&& (= S (set-by-def (PLam x (member x (list-of n
                                                        (+ n 1)
                                                        (+ n 2)
                                                        (+ n 3)
                                                        (+ n 4)
                                                        (+ n 5))))))
            (= (set-union S1 S2) S)
            (is-empty (set-intersection S1 S2))
            (= (product (set-to-list S1))
               (product (set-to-list S2)))))))

(def-answer p (PLam n (|| (= n 2) (= n 3) (= n 5))))

