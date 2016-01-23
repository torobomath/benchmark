;; DOMAIN:    Algebra, simultaneous equations
;; THEORY:    RCF
;; SOURCE:    International Mathematical Olympiad, 1961, Problem 1
;; SCORE:     6
;; AUTHOR:    Jumma Kudo
;; GENERATED: 2014-12-16
;;
;; <PROBLEM-TEXT>
;; Solve the system of equations:
;; \[     x+y+z = a            \]
;; \[     x^2 +y^2 +z^2 = b^2  \]
;; \[     xy = z^2             \]
;; where $a$ and $b$ are constants. Give the conditions that $a$ and $b$ must satisfy
;; so that $x$, $y$, $z$ (the solutions of the system) are distinct positive numbers.
;; </PROBLEM-TEXT>

(def-directive p
  (Find (ab)
  (exists (a b x y z)
    (&& (= ab (list-of a b))
        (= (+ x y z) a)
        (= (+ (^ x 2) (^ y 2) (^ z 2)) (^ b 2))
        (= (* x y) (^ z 2))
        (> x 0) (> y 0) (> z 0)
        (! (= x y)) (! (= y z)) (! (= x z))))))

(def-answer p (PLam ab (exists (a b)
                               (&& (= ab (list-of a b))
                                   (< (abs b) a)
                                   (< a (* (sqrt 3) (abs b)))))))

