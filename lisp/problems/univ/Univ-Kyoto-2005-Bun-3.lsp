;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2005, Humanities Course, Problem 3
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-28
;;
;; <PROBLEM-TEXT>
;; Let ${\alpha}$ and ${\beta}$ be the different complex numbers other
;; than $0$ satisfying
;; $\frac{{\alpha}}{{\beta}}+\frac{\overline{{\alpha}}}{\overline{{\beta}}}=2$.
;; Find the triangle obtained by connecting the three points $0$,
;; ${\alpha}$, and ${\beta}$ on the complex plane, where for the complex
;; number $z$, $\overline{z}$ is a complex number conjugate to $z$, and
;; complex planes are also called complex number plane.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (oab)  (exists (a b) (&&
    (= a (complex ar ai))
    (= b (complex br bi))
    (! (= a (complex 0 0)))
    (! (= b (complex 0 0)))
    (! (= a b))
    (= (+ (/ a b) (/ (conjugate a) (conjugate b))) (complex 2 0))
    (= oab (2d.triangle (complex->point (complex 0 0))
                        (complex->point a)
                        (complex->point b)))))))

(def-answer p (PLam oab (exists (a b) (&&
          (! (= a (complex 0 0)))
          (! (= b (complex 0 0)))
          (! (= a b))
          (= a (complex ar ai))
          (= b (complex br bi))
          (= oab (2d.triangle (complex->point (complex 0 0)) (complex->point a) (complex->point b)))
          (2d.is-right (2d.angle (complex->point (complex 0 0)) (complex->point b) (complex->point a)))))))

