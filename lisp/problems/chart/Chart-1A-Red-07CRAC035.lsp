;; DOMAIN:    Plane Geometry
;; THEORY:    RCF
;; LEVEL:     1
;; SOURCE:    Chart System Math I+A Red Book, Problem 07CRAC035
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2015-01-07

(namespace 2d)

(def-directive
  p1
  (Find (x)
        (exists (A B C D E Cir)
                (&& (circle-type Cir)
                    (on A Cir)
                    (on B Cir)
                    (on C Cir)
                    (on D Cir)
                    (intersect (seg A C) (seg B D) E)
                    (= (length-of (seg A E)) 3)
                    (= (length-of (seg B E)) 6)
                    (= (length-of (seg C E)) 4)
                    (= (length-of (seg D E)) x)))))

(def-directive
  p2
  (Find (x)
        (exists (A B C D E Cir)
                (&& (circle-type Cir)
                    (is-square A B C D)
                    (on A Cir)
                    (on B Cir)
                    (on C Cir)
                    (on D Cir)
                    (intersect (line A D) (line B C) E)
                    (point-outside-of E Cir)
                    (= (length-of (seg A D)) 5)
                    (= (length-of (seg B C)) 9)
                    (= (length-of (seg D E)) 4)
                    (= (length-of (seg C E)) x)))))

(def-directive
  p3
  (Find (x)
        (exists (A B C D Cir)
                (&& (circle-type Cir)
                    (on A Cir)
                    (on C Cir)
                    (on D Cir)
                    (tangent (line A B) Cir A)
                    (on C (seg B D))
                    (= (length-of (seg A B)) x)
                    (= (length-of (seg B C)) 1)
                    (= (length-of (seg C D)) 1)))))

(def-answer p1 (PLam x (= x 2)))

(def-answer p2 (PLam x (= x 3)))

(def-answer p3 (PLam x (= x (sqrt 2))))

