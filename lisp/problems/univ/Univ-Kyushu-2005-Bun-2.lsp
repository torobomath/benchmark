;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2005, Humanities Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Answer the following questions about the quadratic equation
;; $z^2 + t z + t = 0$, where $t$ is a real number.
;;
;; (1) Find the range of $t$ such that this quadratic equation has $2$
;; different imaginary solutions and all the imaginary solutions at that
;; time.
;;
;; (2) Let $z(t)$ be the imaginary solution with a positive imaginary
;; solution among those found in (1). When $t$ moves in the range found
;; in (1), find and draw the figure $C$ formed by the point $z(t)$ on
;; the complex plane.
;;
;; (3) When the point $z$ moves on the figure found in (2) on the
;; complex plane, find and draw the figure formed by the point $w$ that
;; is defined as $w =\frac{i z}{z+1}$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_t
  (Find (t)
  (exists (z1 z2)
    (&&
      (= (+ (^ z1 2) (* (real->complex t) z1) (real->complex t)) (complex 0 0))
      (= (+ (^ z2 2) (* (real->complex t) z2) (real->complex t)) (complex 0 0))
      (! (= z1 z2))
      (! (real-number z1))
      (! (real-number z2))
      ))))

(def-directive
  p1_z
  (Find (z1)
  (exists (z2)
    (&&
      (= (+ (^ z1 2) (* (real->complex t) z1) (real->complex t)) (complex 0 0))
      (= (+ (^ z2 2) (* (real->complex t) z2) (real->complex t)) (complex 0 0))
      (! (= z1 z2))
      (! (real-number z1))
                  (! (real-number z2))
      ))))

(def-directive
  p2
  (Find (C)
        (= C (2d.shape-of-cpfun (PLam zt (exists (t z1 z2)
             (&& (= (+ (^ z1 2) (* (real->complex t) z1) (real->complex t)) (complex 0 0))
                 (= (+ (^ z2 2) (* (real->complex t) z2) (real->complex t)) (complex 0 0))
                 (! (= z1 z2))
                 (< 0 (imaginary-part z1))
                 (< (imaginary-part z2) 0)
                 (! (real-number z1))
                 (! (real-number z2))
                 (= zt (complex->point z1))
                 ))
            )))))

(def-directive
  p3
  (Find (W)
  (= W (2d.shape-of-cpfun (PLam w (exists (t z1 z2)
            (&& (= (+ (^ z1 2) (* (real->complex t) z1) (real->complex t)) (complex 0 0))
                (= (+ (^ z2 2) (* (real->complex t) z2) (real->complex t)) (complex 0 0))
                (! (= z1 z2))
                (< 0 (imaginary-part z1))
                (< (imaginary-part z2) 0)
                (! (real-number z1))
                (! (real-number z2))
                (= w (complex->point (/ (* (i) z1) (+ z1 (complex 1 0)))))
                )
            ))))
   )
)

(def-answer p1_t (PLam t (&& (< 0 t) (< t 4))))

(def-answer p1_z (PLam z1 (&& (< 0 t) (< t 4)
            (|| (= z1 (/ (+ (- (real->complex t)) (* (real->complex (sqrt (.+ (.- (.^ t 2)) (.* 4 t)))) (i))) (real->complex 2)))
             (= z1 (/ (- (- (real->complex t)) (* (real->complex (sqrt (.+ (.- (.^ t 2)) (.* 4 t)))) (i))) (real->complex 2)))))))

(def-answer p2 (PLam C (= C (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point -1 0) 1)) (! (= P (2d.point -2 0))) (! (= P (2d.origin))) (> (2d.y-coord P) 0)))))))

(def-answer p3 (PLam W (= W (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point 0 1) 1)) (! (= P (2d.point 0 2))) (! (= P (2d.origin))) (< (2d.x-coord P) 0)))))))

(def-answer a1 (PLam tRange_z1 (= tRange_z1
                                (pair (PLam t (&& (< 0 t) (< t 4)))
                                      (list-of (/ (+ (- (real->complex t)) (* (real->complex (sqrt (.+ (.- (.^ t 2)) (.* 4 t)))) (i))) (real->complex 2))
                                               (/ (- (- (real->complex t)) (* (real->complex (sqrt (.+ (.- (.^ t 2)) (.* 4 t)))) (i))) (real->complex 2)))))))

(def-answer a2_1 (PLam C (= C (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point -1 0) 1)) (! (= P (2d.point -2 0))) (! (= P (2d.origin))) (> (2d.y-coord P) 0)))))))

(def-answer a2_2 (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point -1 0) 1)) (! (= P (2d.point -2 0))) (! (= P (2d.origin))) (> (2d.y-coord P) 0)))))

(def-answer a3_1 (PLam W (= W (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point 0 1) 1)) (! (= P (2d.point 0 2))) (! (= P (2d.origin))) (< (2d.x-coord P) 0)))))))

(def-answer a3_2 (2d.shape-of-cpfun (PLam P (&& (2d.on P (2d.circle (2d.point 0 1) 1)) (! (= P (2d.point 0 2))) (! (= P (2d.origin))) (< (2d.x-coord P) 0)))))

