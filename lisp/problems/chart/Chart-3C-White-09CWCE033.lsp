;; DOMAIN:    Matrices
;; THEORY:    PA
;; LEVEL:     3
;; SOURCE:    Chart System Math III+C White Book, Problem 09CWCE033
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2014-12-30

(namespace int)

(def-directive
  p
  (Find (mn)
  (exists (m n)
    (&& (< 0 m)
      (< 0 n)
      (= 0 (- (* m (- m 2)) (* (- n) (- n 4))))
      (= mn (list-of m n))))))

(def-answer
  p
  (PLam mn (|| (= mn (list-of 2 4))
               (= mn (list-of 3 1))
               (= mn (list-of 3 3)))))

