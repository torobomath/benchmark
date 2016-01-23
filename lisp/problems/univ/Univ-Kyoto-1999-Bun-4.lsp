;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 1999, Humanities Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-13
;;
;; <PROBLEM-TEXT>
;; For the different four complex numbers $z_1$, $z_2$, $z_3$, and
;; $z_4$, let $w=\frac{(z_1 - z_2)(z_2 - z_4)}{(z_1 - z_4)(z_2 - z_3)}$.
;; Then, prove the following:
;;
;; (1) The necessary and sufficient condition for the complex number $z$
;; to be on the unit circle is $\overline{z}=\frac{1}{z}$.
;;
;; (2) If $z_1$, $z_2$, $z_3$, and $z_4$ are on the unit circle, $w$ is
;; a real number.
;;
;; (3) If $z_1$, $z_2$, and $z_3$ are on the unit circle and $w$ is a
;; real number, $z_4$ is on the unit circle.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1_0
  (Show
    (forall (z)
      (<->
        (2d.on (complex->point z) (2d.unit-circle))
        (&&
          (= (conjugate z)
             (/ (complex 1 0) z))
          (! (= z (complex 0 0))))
      )
    )
  )
)

(def-directive
  p1
  (Show
    (forall (z w z1 z2 z3 z4)
      (->
        (&&
          (pairwise-distinct (list-of z1 z2 z3 z4))
          (= w (/ (* (- z1 z3) (- z2 z4)) (* (- z1 z4) (- z2 z3))))
        ) (<->
            (2d.on (complex->point z) (2d.unit-circle))
            (&&
              (= (conjugate z)
                 (/ (complex 1 0) z))
              (! (= z (complex 0 0))))
        )
      )
    )
  )
)

(def-directive
  p2
  (Show
    (forall (z1 z2 z3 z4 w)
      (->
        (&&
          (pairwise-distinct (list-of z1 z2 z3 z4))
          (= w (/ (* (- z1 z3) (- z2 z4)) (* (- z1 z4) (- z2 z3))))
          (2d.on (complex->point z1) (2d.unit-circle))
          (2d.on (complex->point z2) (2d.unit-circle))
          (2d.on (complex->point z3) (2d.unit-circle))
          (2d.on (complex->point z4) (2d.unit-circle))
        ) (real-number w)
      )
    )
  )
)

(def-directive
  p3
  (Show
    (forall (z1 z2 z3 z4 w)
      (->
        (&&
          (pairwise-distinct (list-of z1 z2 z3 z4))
          (= w (/ (* (- z1 z3) (- z2 z4)) (* (- z1 z4) (- z2 z3))))
          (2d.on (complex->point z1) (2d.unit-circle))
          (2d.on (complex->point z2) (2d.unit-circle))
          (2d.on (complex->point z3) (2d.unit-circle))
          (real-number w)
        ) (2d.on (complex->point z4) (2d.unit-circle))
      )
    )
  )
)

