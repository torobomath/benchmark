;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2001, Humanities Course, Problem 6
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
;; (2) For the complex number $d$ other than $0$, find the figure drawn
;; by the point $z$ that satisfies
;; $d z(\overline{z} + 1)=\overline{d}\overline{z}(z + 1)$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_D
  (Find (Dz)
  (exists (b) (&&
    (.real-number a)
    (.real-number Reb)
    (.real-number Imb)
    (.real-number c)
    (! (= a 0))
    (= b (complex Reb Imb))
    (.> (.- (.^ (abs b) 2) (.* a c)) 0)
    (= Dz (2d.shape-of-cpfun (PLam Pz (exists (z) (&&
      (= Pz (complex->point z))
      (= (+ (+ (+
        (* (* (real->complex a) z) (conjugate z))
          (* (conjugate b) z))
            (* b (conjugate z)))
              (real->complex c))
        (real->complex 0)
      )
    )))))
  ))))

(def-directive
  p2_D
  (Find (Dz)
  (exists (d) (&&
    (.real-number Red)
    (.real-number Imd)
    (= d (complex Red Imd))
    (! (= d (complex 0 0)))
    (= Dz (2d.shape-of-cpfun (PLam Pz (exists (z) (&&
      (= Pz (complex->point z))
      (= (* (* d z) (+ (conjugate z) (real->complex 1))) (* (* (conjugate d) (conjugate z)) (+ z (real->complex 1))))
    )))))
  ))))

(def-answer p1_D (PLam Dz (exists (b) (&&
    (.real-number a)
    (.real-number Reb)
    (.real-number Imb)
    (.real-number c)
    (! (= a 0))
    (= b (complex Reb Imb))
    (.> (.- (.^ (abs b) 2) (.* a c)) 0)
    (= Dz (2d.circle (complex->point (/ b (real->complex (.- a)))) (./ (sqrt (.- (.^ (abs b) 2) (.* a c))) (.abs a))))
))))

(def-answer p2_D (PLam Dz (exists (d) (&&
    (.real-number Red)
    (.real-number Imd)
    (= d (complex Red Imd))
    (! (= d (complex 0 0)))
    (|| (&& (= (imaginary-part d) 0)
            (= Dz (2d.x-axis)))
        (&& (! (= (imaginary-part d) 0))
            (= Dz (2d.circle (complex->point (/ (conjugate d) (- d (conjugate d)))) (abs (/ (conjugate d) (- d (conjugate d)))))))
    )
))))

