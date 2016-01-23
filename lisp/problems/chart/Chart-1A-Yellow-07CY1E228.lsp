;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; LEVEL:     3
;; SOURCE:    Chart System Math I+A Yellow Book, Problem 07CY1E228
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 3d)

(def-directive
  p1
  (Find (h)
    (exists (Cone A B)
      (&& (right-cone-type Cone)
          (sphere-type A)
          (sphere-type B)
          (= 2 (radius-of (base-of Cone)))
          (forall (Q)
            (-> (on Q (boundary-of (base-of Cone)))
                (= 6 (length-of (seg Q (vertice-of Cone))))))
          (is-inscribed-in A Cone)
          (is-inscribed-in B (side-of Cone))
          (tangent A B)
          (point-outside-of (center-of B) A)
          (= h (height-of Cone))))))

(def-directive
  p2
  (Find (r)
    (exists (Cone A B)
      (&& (right-cone-type Cone)
          (sphere-type A)
          (sphere-type B)
          (= 2 (radius-of (base-of Cone)))
          (forall (Q)
            (-> (on Q (boundary-of (base-of Cone)))
                (= 6 (length-of (seg Q (vertice-of Cone))))))
          (is-inscribed-in A Cone)
          (is-inscribed-in B (side-of Cone))
          (tangent A B)
          (point-outside-of (center-of B) A)
          (= r (radius-of A))))))

(def-directive
  p3
  (Find (ratio)
    (exists (Cone A B VA VB)
      (&& (right-cone-type Cone)
          (sphere-type A)
          (sphere-type B)
          (= 2 (radius-of (base-of Cone)))
          (forall (Q)
            (-> (on Q (boundary-of (base-of Cone)))
                (= 6 (length-of (seg Q (vertice-of Cone))))))
          (is-inscribed-in A Cone)
          (is-inscribed-in B (side-of Cone))
          (tangent A B)
          (point-outside-of (center-of B) A)
          (= VA (volume-of A))
          (= VB (volume-of B))
          (= ratio (/ VA VB))))))

(def-answer p1 (PLam h (= h (* 4 (sqrt 2)))))

(def-answer p2 (PLam r (= r (sqrt 2))))

(def-answer p3 (PLam ratio (= ratio 8)))

