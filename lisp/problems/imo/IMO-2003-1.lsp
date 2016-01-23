;; DOMAIN:    Combinatorics, misc
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 2003, Problem 1
;; SCORE:     7
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-11-19
;;
;; <PROBLEM-TEXT>
;; S is the set {1, 2, 3, ..., 1000000}. Show that for any subset A of S with
;; 101 elements we can find 100 distinct elements xi of S, such that the sets
;; { a + xi | a in A } are all pairwise disjoint.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
  p1
  (Show (exists (S)
          (&& (= S (set-by-def (PLam n (&& (<= 1 n)
                                           (<= n 1000000)))))
              (forall (A)
                 (-> (&& (is-subset-of A S)
                         (= (cardinality-of A) 101))
                     (exists (X)
                             (&& (is-subset-of X S)
                                 (= (cardinality-of X) 100)
                                 (pairwise-disjoint
                                    (set-by-def
                                       (PLam Ax (exists (x)
                                                   (= Ax (set-by-def (PLam n (exists (a)
                                                                                (&& (elem a A)
                                                                                    (= n (+ x a)))))))))))))))))))

