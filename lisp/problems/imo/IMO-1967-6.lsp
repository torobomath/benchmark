;; DOMAIN:    Algebra, number sequences
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 1967, Problem 6
;; SCORE:     8
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; In a sports contest, there were $m$ medals awarded on $n$ successive days ($n > 1$).
;; On the first day, one medal and $\frac{1}{7}$ of the remaining $m - 1$ medals
;; were awarded. On the second day, two medals and $\frac{1}{7}$ of the now remaining
;; medals were awarded; and so on. On the $n$-th and last day, the remaining $n$
;; medals were awarded. How many days did the contest last, and how many
;; medals were awarded altogether?
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p
  (Find (nm)
    (exists (medals)
      (&& (= n (list-len medals))
          (forall (k)
            (-> (&& (<= 1 k)
                    (<= k n))
                (&& (= (nth (- k 1) medals)
                       (+ k (div (sum (nthcdr k medals)) 7)))
                    (is-divisible-by (sum (nthcdr k medals)) 7))))
          (= m (sum medals))
          (= nm (list-of n m))))))

(def-answer
   p
   (PLam nm (= nm (list-of 6 36))))

