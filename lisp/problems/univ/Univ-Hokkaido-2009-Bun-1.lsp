;; DOMAIN:    Complex Numbers and Complex Plane
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2009, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-20
;;
;; <PROBLEM-TEXT>
;; Define $r = 1 +\sqrt{3} i$, where $i$ is the imaginary unit. For real
;; numbers $a$ and $b$, define the polynomial $P(x)$ as
;; $P(x)= x^4 + a x^3 + b x^2 - 8(\sqrt{3} + 1)x + 16$. Answer the
;; following questions:
;;
;; (1) Find the values of $a$ and $b$ such that $P({\gamma})= 0$.
;;
;; (2) For $a$ and $b$ found in (1), find all the complex numbers $x$
;; such that $P(x)= 0$ except ${\gamma}$.
;; </PROBLEM-TEXT>

(namespace complex)

(def-directive
  p1
  (Find (ab)
  (exists (a b r)
    (&& (= ab (list-of a b))
        (= r (+ (real->complex 1) (* (real->complex (sqrt 3)) (i))))
        (= (+ (^ r 4) (* (real->complex a) (^ r 3)) (* (real->complex b) (^ r 2)) (* (real->complex (.- (.* 8 (.+ (sqrt 3) 1)))) r) (complex 16 0)) (complex 0 0))
        ))))

(def-directive
  p2
  (Find (rx)
  (exists (a b r)
    (&& (= ab (list-of a b))
        (= r (+ (real->complex 1) (* (real->complex (sqrt 3)) (i))))
        (= (+ (^ r 4) (* (real->complex a) (^ r 3)) (* (real->complex b) (^ r 2)) (* (real->complex (.- (.* 8 (.+ (sqrt 3) 1)))) r) (complex 16 0)) (complex 0 0))
        (! (= r rx))
        (= (+ (^ rx 4) (* (real->complex a) (^ rx 3)) (* (real->complex b) (^ rx 2)) (* (real->complex (.- (.* 8 (.+ (sqrt 3) 1)))) rx) (complex 16 0)) (complex 0 0))
        ))))

(def-answer p1 (PLam ab (= ab (list-of (.- -2 (.* 2 (sqrt 3))) (.+ 8 (.* 4 (sqrt 3)))))))

(def-answer p2 (PLam rx (|| (= rx (- (real->complex 1) (* (real->complex (sqrt 3)) (i)))) (= rx (+ (real->complex (sqrt 3)) (i))) (= rx (- (real->complex (sqrt 3)) (i))))))

