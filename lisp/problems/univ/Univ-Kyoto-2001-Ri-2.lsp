;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2001, Science Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-04-09
;;
;; <PROBLEM-TEXT>
;; When the equation $x^5+x^4-x^3+x^2-(a + 1)x+a=0$ in terms of the
;; unknown number $x$ has complex solutions on the imaginary axis, find
;; all the real numbers $a$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p
  (Find (a)
        (exists (f x0)
          (&&
        (= f (Lam x (+ (^ x 5)
           (^ x 4)
           (- (^ x 3))
           (^ x 2)
           (- (* (+ (real->complex a) (complex 1 0)) x))
           (real->complex a))))
        (= (LamApp f x0)
           (complex 0 0))
        (is-purely-imaginary x0)))))

(def-answer p (PLam a (|| (= a 0) (= a (./ (.+ (.- 1) (sqrt 2)) 2)))))

