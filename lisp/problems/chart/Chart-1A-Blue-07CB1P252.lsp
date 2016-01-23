;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P252
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 3d)

(def-directive
  p1
  (Find (h)
        (exists (C S)
                (&& (cylinder-type C)
                    (= 4 (radius-of (base-of C)))
                    (= h (height-of C))
                    (sphere-type S)
                    (= 6 (radius-of S))
                    (= (volume-of C) (volume-of S))))))

(def-directive
  p2
  (Find (h)
        (exists (C S)
                (&& (cylinder-type C)
                    (= 4 (radius-of (base-of C)))
                    (= h (height-of C))
                    (sphere-type S)
                    (= 4 (radius-of S))
                    (= (area-of C) (area-of S))))))

(def-answer
  p1
  (PLam h (= h 18)))

(def-answer
  p2
  (PLam h (= h 4)))

