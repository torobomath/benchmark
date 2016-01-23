;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 1999, Humanities Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-12
;;
;; <PROBLEM-TEXT>
;; (a) For the complex number $z$ ( $z\not= - 1$), define
;; $f(z)=\frac{z-1}{z+1}$. Answer the following questions:
;;
;; 1) Find $z$ that satisfies $f(f(z))= z + 1$.
;;
;; 2) When the $3$ points $0$, ${\alpha}$, and $f(f({\alpha}))$ form an
;; equilateral triangle, find the complex number ${\alpha}$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Find (z)
    (exists (f)
      (&&
        (= f (Lam z (/ (- z (complex 1 0)) (+ z (complex 1 0)))))
        (= (+ z (complex 1 0)) (LamApp f (LamApp f z)))
      )
    )
  )
)

(def-directive
  p2
  (Find (a)
        (exists (f)
                (&&
                  (= f (Lam z (/ (- z (complex 1 0)) (+ z (complex 1 0)))))
                  (2d.is-equilateral-triangle
                  (complex->point (complex 0 0))
                  (complex->point a)
                  (complex->point (LamApp f (LamApp f a))))))))

(def-answer p1 (PLam z (= (+ (^ z 2) z) (complex -1 0))))

(def-answer p2 (PLam a (||
  (= (- (^ a 2) a) (complex -1 0))
  (= (+ (^ a 2) a) (complex -1 0))
)))

