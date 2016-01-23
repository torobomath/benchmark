;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2001, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-08
;;
;; <PROBLEM-TEXT>
;; When the equation $x^4-x^3+x^2-(a + 2)x-a-3=0$ in terms of the
;; unknown number $x$ has complex solutions on the imaginary axis, find
;; all the real numbers $a$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (a)
        (exists (f x0)
          (&&
        (= f (Lam x (+ (^ x 4)
             (- (^ x 3))
             (^ x 2)
             (- (* (+ (real->complex a) (complex 2 0)) x))
             (real->complex (.- a))
             (complex (.- 3) 0))))
        (is-purely-imaginary x0)
        (= (LamApp f x0) (complex 0 0))
        )
          )))

(def-answer p (PLam a (|| (= a (.- 3)) (= a (.+ (.- 1) (.sqrt 2))))))

