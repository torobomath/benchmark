;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2003, Science Course, Problem 5
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-23
;;
;; <PROBLEM-TEXT>
;; Assume that the different three points $1$, ${\alpha}$, and
;; ${\alpha}^2$ are on the same circumference centered on the real axis
;; on the complex plane. Draw the range of such ${\alpha}$ on the
;; complex plane. Represent the radius of this circle using
;; $|{\alpha}|$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p_1
  (Find (alpha2)
        (exists (C alpha)
                (&& (2d.circle-type C)
                    (= alpha2 (list-of (real-part alpha) (imaginary-part alpha)))
                    (! (= (complex 1 0) alpha))
                    (! (= alpha (^ alpha 2)))
                    (! (= (^ alpha 2) (complex 1 0)))
                    (2d.on (complex->point (complex 1 0)) C)
                    (2d.on (complex->point alpha) C)
                    (2d.on (complex->point (^ alpha 2)) C)
                    (2d.on (2d.center-of C) (2d.x-axis))))))

(def-directive
  p_2
  (Find (r)
        (exists (C alpha)
                (&& (= r (2d.radius-of C))
                    (= a (abs alpha))
                    (2d.circle-type C)
                    (! (= (complex 1 0) alpha))
                    (! (= alpha (^ alpha 2)))
                    (! (= (^ alpha 2) (complex 1 0)))
                    (2d.on (complex->point (complex 1 0)) C)
                    (2d.on (complex->point alpha) C)
                    (2d.on (complex->point (^ alpha 2)) C)
                    (2d.on (2d.center-of C) (2d.x-axis))))))

(def-answer p_1 (PLam alpha (exists (x y) (&&
   (= alpha (list-of x y))
   (|| (2d.on (2d.point x y) (2d.circle (2d.origin) 1))
       (2d.on (2d.point x y) (2d.y-axis)))
   (! (= y 0))
))))

(def-answer p_2 (PLam r (&&
  (> a 0)
  (= r (./ (.+ (.^ a 2) 1) 2))
)))

