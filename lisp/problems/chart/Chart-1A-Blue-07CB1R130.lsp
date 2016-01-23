;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CB1R130
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 3d)

(def-directive
 p1
 (Find (ratios)
  (exists (Cyl S Cone)
    (&& (cylinder-type Cyl)
        (= (* 2 (radius-of (base-of Cyl)))
           (height-of Cyl))
        (sphere-type S)
        (= (radius-of (base-of Cyl)) (radius-of S))
        (right-cone-type Cone)
        (= (radius-of (base-of Cyl)) (radius-of (base-of Cone)))
        (= (height-of Cyl) (height-of Cone))
        (= ratios (list-of (/ (volume-of Cyl) (volume-of S))
                           (/ (volume-of S) (volume-of Cone))))))))

(def-directive
 p2
 (Find (ratios)
  (exists (Cyl S Cone)
    (&& (cylinder-type Cyl)
        (= (* 2 (radius-of (base-of Cyl)))
           (height-of Cyl))
        (sphere-type S)
        (= (radius-of (base-of Cyl)) (radius-of S))
        (right-cone-type Cone)
        (= (radius-of (base-of Cyl)) (radius-of (base-of Cone)))
        (= (height-of Cyl) (height-of Cone))
        (= ratios (list-of (/ (area-of (side-of Cyl)) (area-of S))
                           (/ (area-of S) (area-of (side-of Cone)))))))))

(def-answer
  p1
  (PLam ratios (= ratios (list-of (/ 3 2) 2))))

(def-answer
  p2
  (PLam ratios (= ratios (list-of 1 (/ 4 (sqrt 5))))))

