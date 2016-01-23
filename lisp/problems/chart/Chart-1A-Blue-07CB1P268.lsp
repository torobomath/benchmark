;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1P268
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 3d)

(def-directive
  p
  (Find (minL)
        (minimum (set-by-def (PLam L (exists (O A B C P Q R)
                                             (&& (is-regular-tetrahedron O A B C)
                                                 (on P (seg A B))
                                                 (on Q (seg B C))
                                                 (on R (seg O C))
                                                 (= a (length-of (seg A B)))
                                                 (= L (+ (length-of (seg O P))
                                                         (length-of (seg P Q))
                                                         (length-of (seg Q R))
                                                         (length-of (seg R A))))))))
                 minL)))

(def-answer
 p
 (PLam minL (= minL (* (sqrt 7) a))))

