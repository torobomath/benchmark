;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 1
;; AUTHOR:    Takuya Matsuzaki
;; GENERATED: 2013-11-11
;;
;; <PROBLEM-TEXT>
;; Let $C$ be the graph of the function $y=x(x - 1)(x - 3)$, let $l$ be
;; the straight line with the inclination $t$ passing through the origin
;; $O$, and assume that $C$ and $l$ have common points other than $O$.
;; Let $O$, $P$, and $Q$ be the common points of $C$ and $l$, and
;; $g(t)$, the product of $|\vec{OP}|$ and $|\vec{OQ}|$. However, if one
;; of such common points is a point of contact, the point is regarded as
;; two among $O$, $P$, and $Q$. Investigate the increase/decrease of the
;; function $g(t)$, and find the extremums of the function.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (y_opt)
      (exists (g C O l P Q x_opt) (&&
          (= C (graph-of (fun (Lam x (* x (- x 1) (- x 3))))))
          (= O (origin))
          (line-type l)
          (is-slope-of t l)
          (on O l)
          (on P l)
          (on Q l)
          (on P C)
          (on Q C)
          (|| (! (= O P)) (! (= O Q)))
          (forall (R) (->
              (&& (on R C) (on R l))
              (|| (= R O) (= R P) (= R Q))
          ))
          (forall (t) (= (funapp g t) (* (distance O P) (distance O Q))))
          (func-extreme g x_opt y_opt)))))

(def-answer p (PLam y_opt (|| (= y_opt (/ (+ 36 (* 4 (sqrt 6))) 9))
                              (= y_opt (/ (- 36 (* 4 (sqrt 6))) 9)))))

