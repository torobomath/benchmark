;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     2
;; SOURCE:    Chart System Math I+A White Book, Problem 07CWAE172
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (xy)
        (exists (A B C D O l Cir x y)
                (&& (circle-type Cir)
                    (line-type l)
                    (= O (center-of Cir))
                    (on A Cir)
                    (on B Cir)
                    (on C Cir)
                    (! (= B C))
                    (on O (seg C B))
                    (tangent Cir l A)
                    (intersect (line B C) l D)
                    (= x (rad-of-angle (angle O B A)))
                    (= y (rad-of-angle (angle C D A)))
                    (= (* 120 (Degree))
                       (rad-of-angle (angle B A D)))
                    (= xy (list-of x y))))))

(def-directive
  p2
  (Find (z)
        (exists (A B C D l Cir E)
                (&& (circle-type Cir)
                    (line-type l)
                    (on A Cir)
                    (on B Cir)
                    (on C Cir)
                    (on D Cir)
                    (on E l)
                    (tangent Cir l A)
                    (= (* 60 (Degree))
                       (rad-of-angle (angle B A E)))
                    (= (rad-of-angle (angle A B D))
                       (rad-of-angle (angle C B D)))
                    (= (* 94 (Degree))
                       (rad-of-angle (angle B C D)))
                    (= z (rad-of-angle (angle B D C)))))))

(def-answer p1 (PLam xy (= xy (list-of (* 30 (Degree))
                                       (* 30 (Degree))))))

(def-answer p2 (PLam z (= z (* 52 (Degree)))))

