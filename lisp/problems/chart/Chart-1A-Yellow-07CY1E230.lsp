;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     5
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E230
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 3d)

(def-directive
  p
  (Find (k)
        (exists (Cir A B C D AA BB Trapezoid Sphere TrancatedCone)
                (&& (circle-type Cir)
                    (is-square A B C D)
                    (perpendicular (line A D) (line C D))
                    (perpendicular (line B C) (line C D))
                    (= (/ (length-of (seg A D)) (length-of (seg B C)))
                       (/ 1 k))
                    (< 1 k)
                    (point-symmetry A AA D)
                    (point-symmetry B BB D)
                    (= Trapezoid (square A B BB AA))
                    (is-inscribed-in Cir Trapezoid)
                    (= Sphere (solid-of-revolution Cir (line C D)))
                    (= TrancatedCone (solid-of-revolution Trapezoid (line C D)))
                    (= (/ 7 4)
                       (/ (volume-of TrancatedCone) (volume-of Sphere)))))))

(def-answer p (PLam k (= k 2)))

