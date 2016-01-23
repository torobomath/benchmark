;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2001, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-26
;;
;; <PROBLEM-TEXT>
;; Consider the circle $C$ whose center is on the real axis among the
;; circles passing through the points $z_1 =(1 +\sqrt{2})+\sqrt{2} i$
;; and $z_2 =\sqrt{3} i$ on the complex plane, then answer the following
;; questions:
;;
;; (1) Find the center ${\eta}$ and the radius $r$ of the circle $C$.
;;
;; (2) Find the arguments of the complex number $z_1 - {\eta}$ and
;; $z_2-{\eta}$.
;;
;; (3) Find the area of the sector enclosed by the line segments
;; $z_1 {\eta}$, $z_2 {\eta}$, and the shorter arc
;; $\stackrel{\frown}{z_1z_2}$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_1
  (Find (w)
        (exists (z1 z2 r C)
          (&& (= z1 (complex (.+ 1 (sqrt 2)) (sqrt 2)))
        (= z2 (complex 0 (sqrt 3)))
        (= C (2d.circle (complex->point w) r))
        (2d.on (complex->point z1) C)
        (2d.on (complex->point z2) C)
        (2d.on (2d.center-of C) (2d.x-axis))))))

(def-directive
  p1_2
  (Find (r)
        (exists (z1 z2 w C)
          (&& (= z1 (complex (.+ 1 (sqrt 2)) (sqrt 2)))
        (= z2 (complex 0 (sqrt 3)))
        (2d.on (complex->point z1) C)
        (2d.on (complex->point z2) C)
        (2d.circle-type C)
        (= C (2d.circle (complex->point w) r))
        (2d.on (2d.center-of C) (2d.x-axis))))))

(def-directive
  p2z1w
  (Find (ans)
        (exists (z1 z2 w r C)
          (&& (= z1 (complex (.+ 1 (sqrt 2)) (sqrt 2)))
        (= z2 (complex 0 (sqrt 3)))
        (2d.on (complex->point z1) C)
        (2d.on (complex->point z2) C)
        (.> r 0)
        (= C (2d.circle (complex->point w) r))
        (2d.on (2d.center-of C) (2d.x-axis))
        (= ans (2d.rad-of-angle (2d.angle (2d.point 1 0) (2d.origin) (complex->point (- z1 w)))))
        ))))

(def-directive
  p2z2w
  (Find (ans)
        (exists (z1 z2 w r C)
          (&& (= z1 (complex (.+ 1 (sqrt 2)) (sqrt 2)))
        (= z2 (complex 0 (sqrt 3)))
        (2d.on (complex->point z1) C)
        (2d.on (complex->point z2) C)
        (.> r 0)
        (= C (2d.circle (complex->point w) r))
        (2d.on (2d.center-of C) (2d.x-axis))
        (= ans (2d.rad-of-angle (2d.angle (2d.point 1 0) (2d.origin) (complex->point (- z2 w)))))
        ))))

(def-directive
  p3
  (Find (S)
        (exists (z1 z2 w C z1z2 r)
          (&& (= z1 (complex (.+ 1 (sqrt 2)) (sqrt 2)))
        (= z2 (complex 0 (sqrt 3)))
        (2d.on (complex->point z1) C)
        (2d.on (complex->point z2) C)
        (= C (2d.circle (complex->point w) r))
        (2d.on (2d.center-of C) (2d.x-axis))
        (= z1z2 (2d.minor-arc (2d.arc (2d.center-of C) (complex->point z1) (complex->point z2))))
        (= S (2d.area-of (2d.shape-enclosed-by (list-of
                      (2d.line (complex->point z1) (complex->point w))
                      (2d.line (complex->point z2) (complex->point w))
                      z1z2
                    ))))
        ))))

(def-answer p1_1 (PLam w (= w (complex 1 0))))

(def-answer p1_2 (PLam r (= r 2)))

(def-answer p2z1w (PLam ans (= ans (.* 45 (Degree)))))

(def-answer p2z2w (PLam ans (= ans (.* 120 (Degree)))))

(def-answer p3 (PLam S (= S (.* (./ 5 6) (Pi)))))

