;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R114
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Find (a)
    (exists (A B C b c)
      (&& (= a (length-of (seg B C)))
          (= b (length-of (seg C A)))
          (= c (length-of (seg A B)))
      (is-triangle A B C)
          (= (rad-of-angle (angle C A B))
             (* 60 (Degree)))
          (= b 5)
          (= c 3)))))

(def-directive
  p2
  (Find (angleCAB)
        (exists (A B C a b c)
                (&& (= a (length-of (seg B C)))
                    (= b (length-of (seg C A)))
                    (= c (length-of (seg A B)))
            (is-triangle A B C)
                    (= a (sqrt 10))
                    (= b (sqrt 2))
                    (= c 2)
                    (= angleCAB (rad-of-angle (angle C A B)))))))

(def-directive
  p3
  (Find (c)
    (exists (A B C a b)
      (&& (= a (length-of (seg B C)))
          (= b (length-of (seg C A)))
          (= c (length-of (seg A B)))
      (is-triangle A B C)
          (= a 2)
          (= b (sqrt 6))
          (= (rad-of-angle (angle A B C))
             (* 60 (Degree)))))))

(def-answer p1 (PLam a (= a (sqrt 19))))

(def-answer p2 (PLam angleCAB (= angleCAB (* 135 (/ (Pi) 180)))))

(def-answer p3 (PLam c (= c (+ 1 (sqrt 3)))))

