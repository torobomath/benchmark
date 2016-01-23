;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAE024
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Find (a)
    (exists (C1 C2 C3 C)
      (&& (circle-type C1)
          (circle-type C2)
          (circle-type C3)
          (circle-type C)
          (= (radius-of C1) a)
          (= (radius-of C2) a)
          (= (radius-of C3) (* 2 a))
          (= (radius-of C) 1)
          (is-inscribed-in C1 C)
          (is-inscribed-in C2 C)
          (is-inscribed-in C3 C)
          (is-circumscribed-about C1 C2)
          (is-circumscribed-about C2 C3)
          (is-circumscribed-about C3 C1)))))

(def-answer p (PLam a (= a (/ (- (* 4 (sqrt 2)) 5) 2))))

