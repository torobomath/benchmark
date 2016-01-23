;; DOMAIN:    Combinatorics, pigeon-hole principle
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1972, Problem 1
;; SCORE:     5
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-12
;;
;; <PROBLEM-TEXT>
;; Prove that from a set of ten distinct two-digit numbers
;; (in the decimal system), it is possible to select two disjoint
;; subsets whose members have the same sum.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive
 p
 (Show (forall (n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 ns)
         (-> (&& (= ns (list-of n0 n1 n2 n3 n4 n5 n6 n7 n8 n9))
                 (all (PLam m (&& (<= 10 m) (<= m 99))) ns)
                 (< n0 n1) (< n1 n2) (< n2 n3) (< n3 n4) (< n4 n5)
                 (< n5 n6) (< n6 n7) (< n7 n8) (< n8 n9))
             (exists (ns1 ns2 ss1 ss2)
               (&& (= ss1 (set-by-def (PLam m (member m ns1))))
                   (= ss2 (set-by-def (PLam m (member m ns2))))
                   (is-empty (set-intersection ss1 ss2))
                   (= (set-union ss1 ss2) (set-by-def (PLam m (member m ns))))
                   (= (sum ns1) (sum ns2))))))))

