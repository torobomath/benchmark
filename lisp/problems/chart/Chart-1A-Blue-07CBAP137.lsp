;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Blue Book, Problem 07CBAP137
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-03

(namespace 2d)

(def-directive
  p1
  (Find (ab)
    (exists (A B C D E a b)
      (&& (is-triangle A B C)
          (= (length-of (seg A D)) 8)
          (= (length-of (seg D B)) b)
          (= (length-of (seg A E)) a)
          (= (length-of (seg D E)) 9)
          (= (length-of (seg B C)) 12)
          (= (length-of (seg E C)) 2)
          (on D (seg A B))
          (on E (seg A C))
          (parallel (line D E) (line B C))
          (= ab (list-of a b))))))

(def-directive
  p2
  (Find (xy)
    (exists (A B C D E F x y)
      (&& (parallel (line A D) (line B C))
          (= (length-of (seg A D)) (length-of (seg B C)))
          (= (rad-of-angle (angle B A F))
             (rad-of-angle (angle F A D)))
          (= x (rad-of-angle (angle F C D)))
          (= y (rad-of-angle (angle C F A)))
          (= (* 55 (Degree)) (rad-of-angle (angle F E C)))
          (intersect (seg A E) (seg B C) F)
          (on C (seg E D))
          (= xy (list-of x y))))))

(def-directive
   p3
   (Find (x)
     (exists (A B C D O Cir)
       (&& (circle-type Cir)
           (= O (center-of Cir))
           (on A Cir)
           (on B Cir)
           (on C Cir)
           (on D Cir)
           (on O (seg B D))
           (= (* 56 (Degree)) (rad-of-angle (angle A B D)))
           (= x (rad-of-angle (angle C D B)))))))

(def-answer p1 (PLam ab (= ab (list-of 6 (/ 8 3)))))

(def-answer p2 (PLam xy (= xy (list-of (* 110 (Degree)) (* 125 (Degree))))))

(def-answer p3 (PLam x (= x (* 22 (Degree)))))

