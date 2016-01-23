;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2013, Humanities Course, Problem 1
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Define $f(x)=(x + a)(x + 2)$, where $a$ is a real number equal to or
;; larger than $2$. Find the range of the value of $a$ such that
;; $f(f(x))>0$ is true for all the real numbers $x$.
;; </PROBLEM-TEXT>

(def-directive
    p1
    (Find (a)
        (let ((f (Lam x (* (+ x a) (+ x 2)))))
      (&& (>= a 2)
          (forall (x) (> (LamApp f (LamApp f x)) 0))
          )
      )))

(def-answer p1 (PLam a (&&
  (<= 2 a) (< a (+ 2 (* 2 (sqrt 2))))
)))

