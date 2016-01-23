;; DOMAIN:    Algebra, number sequences
;; THEORY:    ZF
;; SOURCE:    International Mathematical Olympiad, 1991, Problem 6
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-12-17
;;
;; <PROBLEM-TEXT>
;; An infinite sequence $x_0, x_1, x_2, ¥ldots$ of real numbers is said to be
;; $bounded$ if there is a constant $C$ such that $|x_i| ¥le C$ for every $i ¥ge 0$.
;; Given any real number $a > 1$, construct a bounded infinite sequence
;; $x_0, x_1, x_2, ¥ldots$ such that
;; ¥[
;; |x_i - x_j| |i - j|^a ¥ge 1
;; ¥]
;; for every pair of distinct nonnegative integers $i$, $j$.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Show (exists (x)
        (&& (seq.is-bounded x)
            (> a 1)
            (forall (i j)
                    (-> (&& (! (= i j))
                            (int.<= 0 i)
                            (int.<= 0 j))
                        (<= 1 (* (abs (- (seq.nth-term-of x (seq.index i))
                                         (seq.nth-term-of x (seq.index j))))
                                 (^ (abs (int->real (int.- i j))) a)))))))))

