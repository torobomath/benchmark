;; DOMAIN:    Number Theory, misc
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1976, Problem 4
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-26
;;
;; <PROBLEM-TEXT>
;; Determine, with proof, the largest number which is the product of positive
;; integers whose sum is $1976$.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (M)
    (maximum (set-by-def (PLam p (exists (ns) (&& (all (PLam n (> n 0)) ns)
                                                  (= 1976 (sum ns))
                                                  (= p (product ns))))))
             M)))

(def-answer p (PLam M (= M (* 2 (^ 3 658)))))

