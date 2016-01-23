;; DOMAIN:    Number Theory, misc
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2004, Problem 6
;; SCORE:     7
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-11-04
;;
;; <PROBLEM-TEXT>
;; We call a positive integer <i>alternating</i> if every two consecutive
;; digits in its decimal representation are of different parity.
;; Find all positive integers n such that n has a multiple which is alternating.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Find (n)
    (&& (< 0 n)
        (exists (m digits)
                (&& (is-divisible-by m n)
                    (= digits (int2decimal m))
                    (forall (k)
                            (-> (&& (<= 0 k)
                                    (< (+ k 1) (list-len digits)))
                                (! (= (mod (nth k digits) 2)
                                      (mod (nth (+ k 1) digits) 2))))))))))

(def-answer p (PLam n (! (is-divisible-by n 20))))

