;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Science Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-28
;;
;; <PROBLEM-TEXT>
;; Consider the point $z$ on the complex plane.
;;
;; (1) If the real numbers $a$ and $c$, and the complex number $b$
;; satisfy $|b|^2 - a c > 0$, find the figure drawn by the point $z$
;; that satisfies
;; $a z\overline{z} +\overline{b} z + b\overline{z} + c = 0$ when
;; $a\not= 0$, where $\overline{z}$ is the complex number conjugate to
;; $z$.
;;
;; (2) For the complex number $d$ other than $0$ and the $2$ different
;; points $p$ and $q$ on the complex plane, find the figure drawn by the
;; point $z$ that satisfies
;; $d(z - p)(\overline{z} -\overline{q})=\overline{d}(z - q)(\overline{z} -\overline{p})$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_D
  (Find (Dz)
  (&& (! (.= a 0))
      (.> (.- (.^ (abs (complex b1 b2)) 2) (.* a c)) 0)
      (= Dz (2d.shape-of-cpfun (PLam Pz (exists (z b)
                  (&& (= Pz (complex->point z))
                                  (= b (complex b1 b2))
                                  (= (+ (* (real->complex a) z (conjugate z))
                                        (* (conjugate b) z)
                                        (* b (conjugate z))
                                        (real->complex c))
                                     (complex 0 0))))))))))

(def-directive
  p2_D
  (Find (Dz)
  (&& (! (= (complex d1 d2) (complex 0 0)))
      (! (= (complex p1 p2) (complex q1 q2)))
      (= Dz (2d.shape-of-cpfun (PLam Pz (exists (z d p q)
                  (&& (= d (complex d1 d2)) (= p (complex p1 p2)) (= q (complex q1 q2))
                (= Pz (complex->point z))
                (= (* d (- z p) (- (conjugate z) (conjugate q))) (* (conjugate d) (- z q) (- (conjugate z) (conjugate p))))))))))))

(def-answer p1_D (PLam Dz (&& (! (= a 0)) (.> (.- (.^ (abs (complex b1 b2)) 2) (.* a c)) 0)
            (= Dz (2d.circle (complex->point (/ (complex b1 b2) (real->complex (.- a)))) (./ (sqrt (.- (.^ (abs (complex b1 b2)) 2) (.* a c))) (.abs a))))
            )))

(def-answer p2_D (PLam Dz (&& (! (= (complex d1 d2) (complex 0 0)))
            (! (= (complex p1 p2) (complex q1 q2)))
            (|| (&& (= (complex d1 d2) (conjugate (complex d1 d2)))
              (= Dz (2d.line (complex->point (complex p1 p2)) (complex->point (complex q1 q2)))))
             (&& (! (= (complex d1 d2) (conjugate (complex d1 d2))))
           (= Dz (2d.circle (complex->point (/ (- (* (complex d1 d2) (complex p1 p2)) (* (conjugate (complex d1 d2)) (complex q1 q2))) (- (complex d1 d2) (conjugate (complex d1 d2)))))
                (./ (.* (abs (complex d1 d2)) (abs (- (complex p1 p2) (complex q1 q2)))) (abs (- (complex d1 d2) (conjugate (complex d1 d2))))))))))))

