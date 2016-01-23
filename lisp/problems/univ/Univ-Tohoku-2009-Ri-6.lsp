;; DOMAIN:    Differentiation and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2009, Science Course, Problem 6
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; For the real number $a$, find the range of $a$ such that the equation
;; of $x$: $|x(x - 2)| + 2 a |x| - 4 a |x - 2| - 1 = 0$ has four
;; different real solutions.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (a)
  (exists (x1 x2 x3 x4 f)
    (&&
     (= f (Lam x (+ (abs (* x (- x 2))) (* 2 a (abs x)) (* (- 4) a (abs (- x 2))) (- 1))))
     (< x1 x2) (< x2 x3) (< x3 x4)
     (is-solution-of x1 (equation f))
     (is-solution-of x2 (equation f))
     (is-solution-of x3 (equation f))
     (is-solution-of x4 (equation f))
     ))))

(def-answer p (PLam a (|| (&& (< (/ -1 8) a) (< a 0))
        (&& (< (/ 2 9) a) (< a (/ 1 4)))
        (&& (< (+ 3 (sqrt 7)) a)))))

