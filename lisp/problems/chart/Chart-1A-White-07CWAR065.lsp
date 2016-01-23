;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAR065
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
 p1
 (Find (alpha)
   (exists (A B C O)
     (&& (is-circumcenter-of O (triangle A B C))
         (= (* 50 (Degree))
            (rad-of-angle (angle B A C)))
         (= (* 20 (Degree))
            (rad-of-angle (angle A B O)))
         (= alpha
            (rad-of-angle (angle B C O)))))))

(def-directive
  p2
  (Find (alpha)
        (exists (A B C O)
                (&& (is-circumcenter-of O (triangle A B C))
                    (on O (seg B C))
                    (= (* 35 (Degree))
                       (rad-of-angle (angle B A O)))
                    (= alpha
                       (rad-of-angle (angle A O C)))))))

(def-directive
  p3
  (Find (alpha)
        (exists (A B C I)
                (&& (is-incenter-of I (triangle A B C))
                    (= (* 70 (Degree))
                       (rad-of-angle (angle B A C)))
                    (= (* 30 (Degree))
                       (rad-of-angle (angle A C I)))
                    (= alpha
                       (rad-of-angle (angle B I C)))))))

(def-answer p1 (PLam alpha (= alpha (* 40 (Degree)))))

(def-answer p2 (PLam alpha (= alpha (* 70 (Degree)))))

(def-answer p3 (PLam alpha (= alpha (* 125 (Degree)))))

