;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE149
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-30

(namespace int)

(def-directive
 p1
 (Find (C)
   (= C (cardinality-of (set-by-def (PLam n (&& (<= 200 n)
                                                (<= n 500)
                                                (= (mod n 7) 5)
                                                (= (mod n 13) 11))))))))

(def-directive
  p2
  (Find (S)
        (= S (sum (set-to-list (set-by-def (PLam n (&& (<= 200 n)
                                                       (<= n 500)
                                                       (= (mod n 7) 5)
                                                       (= (mod n 13) 11)))))))))

(def-answer p1 (PLam S (= S 3)))

(def-answer p2 (PLam C (= C 1086)))

