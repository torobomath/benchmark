;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP153
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p
  (Find (x)
    (exists (A B C)
      (&& (is-triangle A B C)
          (= (length-of (seg A B)) 2)
          (= (length-of (seg B C)) x)
          (= (length-of (seg A C)) (- 4 x))))))

(def-answer p (PLam x (&& (< 1 x) (< x 3))))

