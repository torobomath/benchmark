;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-15
;;
;; <PROBLEM-TEXT>
;; Consider the sphere that has its center on the base and is in contact
;; with all the sides of the regular quadrangular pyramid $V$. Let $a$
;; be the side length of the base, then find the following quantities:
;;
;; (1) The height of $V$
;;
;; (2) The volume of the intersection of the sphere and the pyramid $V$
;;
;; Here, regular quadrangular pyramid is a solid enclosed be a square
;; base and four congruent isosceles triangles whose base is a side of
;; the square base.
;; </PROBLEM-TEXT>

(namespace 3d)

(def-directive
  p1
  (Find (h)
  (exists (A B C D E F V)
    (&& (square-pyramid-type V)
          (is-regular-square (base-of V))
          (= (length-of (seg E A)) (length-of (seg E B)))
          (= (length-of (seg E B)) (length-of (seg E C)))
          (= (length-of (seg E C)) (length-of (seg E D)))
          (= (length-of (seg E D)) (length-of (seg E A)))
          (= (length-of (seg A B)) a)
          (sphere-type F)
          (on (center-of F) (inner-part-of (base-of V)))
          (tangent F (seg A B))
          (tangent F (seg B C))
          (tangent F (seg C D))
          (tangent F (seg D A))
          (tangent F (seg E A))
          (tangent F (seg E B))
          (tangent F (seg E C))
          (tangent F (seg E D))
          (= h (height-of V))))))

(def-directive
  p2
  (Find (volume)
  (exists (A B C D E F V)
    (&&
     (< 0 a)
       (square-pyramid-type V)
         (is-regular-square (base-of V))
     (= (length-of (seg E A)) (length-of (seg E B)))
     (= (length-of (seg E B)) (length-of (seg E C)))
     (= (length-of (seg E C)) (length-of (seg E D)))
     (= (length-of (seg E D)) (length-of (seg E A)))
     (sphere-type F)
     (on (center-of F) (inner-part-of (base-of V)))
     (tangent F (seg A B))
     (tangent F (seg B C))
     (tangent F (seg C D))
     (tangent F (seg D A))
     (tangent F (seg E A))
     (tangent F (seg E B))
     (tangent F (seg E C))
     (tangent F (seg E D))
     (= volume (volume-of (intersection V F)))))))

(def-answer p1 (PLam h (&&
    (< 0 a)
    (= h (* (/ (sqrt 2) 2) a))
)))

(def-answer p2 (PLam volume (&&
    (< 0 a)
    (= volume (* (- (/ (* 7 (sqrt 6)) 54) (/ 1 4)) (Pi) (^ a 3)))
)))

