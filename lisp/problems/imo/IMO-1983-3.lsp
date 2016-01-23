;; DOMAIN:    Number Theory, number theory
;; THEORY:    PA
;; SOURCE:    International Mathematical Olympiad, 1983, Problem 3
;; SCORE:     7
;; AUTHOR:    Munehiro Kobayashi
;; GENERATED: 2014-12-18
;;
;; <PROBLEM-TEXT>
;; Let $a$, $b$ and $c$ be positive integers, no two of which have a common divisor
;; greater than $1$. Show that $2abc - ab - bc - ca$ is the largest integer which
;; cannot be expressed in the form $xbc + yca + zab$, where $x$, $y$ and $z$ are
;; non-negative integers.
;; </PROBLEM-TEXT>

(namespace int)

(def-directive p
  (Show
    (forall (a b c n)
      (-> (&& (< 0 a) (< 0 b) (< 0 c)
                    (are-coprime a b)
                    (are-coprime b c)
                    (are-coprime c a)
                    (is-integer n)
                    (! (exists (x y z)
                               (&& (<= 0 x)
                                   (<= 0 y)
                                   (<= 0 z)
                                   (= n (+ (* x b c) (* y c a) (* z a b)))))))
                (&& (! (exists (x y z)
                               (&& (<= 0 x)
                                   (<= 0 y)
                                   (<= 0 z)
                                   (= (+ (* 2 a b c) (- (* a b)) (- (* b c)) (- (* c a)))
                                      (+ (* x b c) (* y c a) (* z a b))))))
                    (<= n (+ (* 2 a b c) (- (* a b)) (- (* b c)) (- (* c a)))))))))

