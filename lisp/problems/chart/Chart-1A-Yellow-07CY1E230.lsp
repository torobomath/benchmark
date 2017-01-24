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
      (&& (< 1 k)
          (exists (Cir A B C D P Trapezoid Sphere Cone TrancatedCone)(&&
              (is-square A B C D)
              (perpendicular (line A D) (line C D))
              (perpendicular (line B C) (line C D))
              (parallel (line A D) (line B C))
              (= (* k (length-of (seg A D))) (length-of (seg B C)))
              (= Trapezoid (square A B C D))
              (circle-type Cir)
              (perpendicular (line C D) Cir)
              (intersect (line A B) (line C D) P)
              (= Cone (right-cone Cir P))
              (sphere-type Sphere)
              (is-inscribed-in Sphere Cone)
              (tangent Sphere (plane2 D (vec C D)))
              (= TrancatedCone (solid-of-revolution Trapezoid (line C D)))
              (= (* 4 (volume-of TrancatedCone)) (* 7 (volume-of Sphere))))))))

(def-answer p (PLam k (= k 2)))

