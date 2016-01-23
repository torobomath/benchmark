;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE146
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-30

(namespace int)

(def-directive
 p1
 (Find (C)
   (= C (cardinality-of (set-by-def (PLam n (&& (<= 10 n)
                                                (<= n 99)
                                                (= (mod n 6) 2))))))))

(def-directive
  p2
  (Find (S)
        (= S (sum (set-to-list (set-by-def (PLam n (&& (<= 10 n)
                                                       (<= n 99)
                                                       (= (mod n 6) 2)))))))))

(def-answer p1 (PLam S (= S 15)))

(def-answer p2 (PLam C (= C 840)))

