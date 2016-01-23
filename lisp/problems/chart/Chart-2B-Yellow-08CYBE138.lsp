;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     2
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE138
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-30

(namespace int)

(def-directive
  p1
  (Find (sum1)
    (= sum1 (sum (set-to-list (set-by-def (PLam n (&& (<= 1 n)
                                                      (< n 200)
                                                      (! (is-divisible-by n 5))))))))))

(def-directive
  p2
  (Find (sum2)
    (= sum2 (sum (set-to-list (set-by-def (PLam n (&& (<= 1 n)
                                                      (< n 200)
                                                      (|| (is-divisible-by n 3)
                                                          (is-divisible-by n 5))))))))))

(def-directive
  p3
  (Find (sum3)
    (= sum3 (sum (set-to-list (set-by-def (PLam n (&& (<= 1 n)
                                                      (< n 200)
                                                      (! (is-divisible-by n 3))
                                                      (! (is-divisible-by n 5))))))))))

(def-answer p1 (PLam sum1 (= sum1 16000)))

(def-answer p2 (PLam sum2 (= sum2 9168)))

(def-answer p3 (PLam sum3 (= sum3 10732)))

