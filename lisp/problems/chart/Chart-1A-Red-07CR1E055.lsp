;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CR1E055
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 3d)

(def-directive
  p
  (Find (V)
        (exists (A B C D E F)
               (&& (on D (xy-plane))
                   (on E (xy-plane))
                   (on F (xy-plane))
                   (= (vec (origin) A) (v+ (vec (origin) D) (vec3d 0 0 8)))
                   (= (vec (origin) B) (v+ (vec (origin) E) (vec3d 0 0 3)))
                   (= (vec (origin) C) (v+ (vec (origin) F) (vec3d 0 0 6)))
                   (= 12 (area-of (triangle D E F)))
                   (= V (volume-of (shape-of-cpfun (PLam P (&& (point-inside-of P (prism (triangle D E F)
                                                                                          (vec3d 0 0 8)))
                                                                (on P (lower-region-of (plane1 A B C))))))))))))

(def-answer p (PLam V (= V 68)))

