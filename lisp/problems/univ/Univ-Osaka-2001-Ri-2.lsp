;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2001, Science Course, Problem 2
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $f(x)= x^4 + x^3 - 3 x^2$. Assume that only one tangent can be
;; drawn from the point $(0, a)$ to the curve $y = f(x)$, and the
;; tangent is in contact with the curve at only one point. Find the
;; value of $a$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p
  (Find (a)
    (exists (f l P)
        (&&
          (= f (graph-of (poly-fun (list-of 0 0 -3 1 1))))
          (on (point 0 a) l)
          (line-type l)
          (tangent f l P)
          (forall (m Q)
              (->
                (&&
                  (on (point 0 a) m)
                  (line-type m)
                  (tangent f m Q))
                (&&
                  (= m l)
                  (= P Q))))
          (forall (R) (->
            (&& (on R l) (on R f))
            (= R P)
          ))
))))

(def-answer p (PLam a (= a 2)))

