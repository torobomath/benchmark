;; DOMAIN:    Number Sequences
;; THEORY:    PA
;; LEVEL:     4
;; SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE209
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-30

(namespace rat)

(def-directive
  p2
  (Show (forall (n)
           (-> (int.<= 2 n)
               (> (^ (+ (int->rat 1) (ratio 1 n)) n) (int->rat 2))))))

(def-directive
  p3
  (Show (forall (n)
           (-> (int.<= 6 n)
               (> (^ (ratio n 2) n) (int->rat (int.factorial n)))))))

