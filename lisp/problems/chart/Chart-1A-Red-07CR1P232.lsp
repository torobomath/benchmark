;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1P232
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p
  (Find (x)
        (exists (A B C D E)
                (&& (is-triangle A D E)
                    (perpendicular (seg A D) (seg D E))
                    (on C (seg A E))
                    (on B (seg A D))
                    (perpendicular (seg A B) (seg B C))
                    (= (area-of (triangle A B C))
                       (area-of (square C B D E)))
                    (= (/ (length-of (seg A B))
                          (length-of (seg B D)))
                       (/ 1 x))))))

(def-answer p (PLam x (= x (- (sqrt 2) 1))))

