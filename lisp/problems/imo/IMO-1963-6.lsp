;; DOMAIN:    Combinatorics, permutation and combination
;; THEORY:    PA(comb)
;; SOURCE:    International Mathematical Olympiad, 1963, Problem 6
;; SCORE:     8
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-24
;;
;; <PROBLEM-TEXT>
;; Five students, $A$, $B$, $C$, $D$, $E$, took part in a contest. One prediction was that
;; the contestants would finish in the order $ABCDE$. This prediction was very
;; poor. In fact no contestant finished in the position predicted, and no two
;; contestants predicted to finish consecutively actually did so.
;; A second prediction had the contestants finishing in the order $DAECB$.
;; This prediction was better. Exactly two of the contestants finished
;; in the places predicted, and two disjoint pairs of students predicted
;; to finish consecutively actually did so. Determine the order in
;; which the contestants finished.
;; </PROBLEM-TEXT>

;;@ NOTE:

;;@ A, B, C, D, E in { 1, 2, 3, 4, 5, 6 }

;;@ A != B, A != C, ..., D != E

(def-directive
 p
 (Find (ABCDE)
    (exists (A B C D E)
       (&& (= ABCDE (list-of A B C D E))
           (all (PLam x (member x (list-of 1 2 3 4 5)))
                (list-of A B C D E))
           (pairwise-distinct (list-of A B C D E))
           (! (= A 1))
           (! (= B 2))
           (! (= C 3))
           (! (= D 4))
           (! (= E 5))
           (! (= (+ A 1) B))
           (! (= (+ B 1) C))
           (! (= (+ C 1) D))
           (! (= (+ D 1) E))
           (|| (&&    (= D 1)     (= A 2)  (! (= E 3)) (! (= C 4)) (! (= B 5)))
               (&&    (= D 1)  (! (= A 2))    (= E 3)  (! (= C 4)) (! (= B 5)))
               (&&    (= D 1)  (! (= A 2)) (! (= E 3))    (= C 4 ) (! (= B 5)))
               (&&    (= D 1)  (! (= A 2)) (! (= E 3)) (! (= C 4))    (= B 5))
               (&& (! (= D 1))    (= A 2)     (= E 3)  (! (= C 4)) (! (= B 5)))
               (&& (! (= D 1))    (= A 2)  (! (= E 3))    (= C 4 ) (! (= B 5)))
               (&& (! (= D 1))    (= A 2)  (! (= E 3)) (! (= C 4))    (= B 5))
               (&& (! (= D 1)) (! (= A 2))    (= E 3)     (= C 4)  (! (= B 5)))
               (&& (! (= D 1)) (! (= A 2))    (= E 3)  (! (= C 4))    (= B 5))
               (&& (! (= D 1)) (! (= A 2)) (! (= E 3))    (= C 4)     (= B 5)))
           (|| (&&    (= (+ D 1) A)  (! (= (+ A 1) E))    (= (+ E 1) C)  (! (= (+ C 1) B)))
               (&&    (= (+ D 1) A)  (! (= (+ A 1) E)) (! (= (+ E 1) C))    (= (+ C 1) B))
               (&& (! (= (+ D 1) A))    (= (+ A 1) E)  (! (= (+ E 1) C))    (= (+ C 1) B)))))))

(def-answer p (PLam ABCDE (= ABCDE (list-of 3 5 4 2 1))))

