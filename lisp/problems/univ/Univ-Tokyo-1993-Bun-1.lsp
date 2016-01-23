;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 1993, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; Assume that the cubic function $f(x)=x^3+a x^2+b x$ has a local
;; maximum value and a local minimum value in the interval
;; $-1\le x\le 1$. Draw the range of the pairs of real numbers $(a, b)$
;; that satisfy this condition on the $ab$ plane.
;; </PROBLEM-TEXT>

(def-directive
  p
  (Find (ab)
        (exists (a b f)
                (&& (= ab (list-of a b))
                    (= f (poly-fun (list-of 0 b a 1)))
                    (exists (x0 x1)
                            (&& (<= -1 x0)
                                (<= x0 1)
                                (<= -1 x1)
                                (<= x1 1)
                                (func-maximal f x0 (funapp f x0))
                                (func-minimal f x1 (funapp f x1))))))))

(def-answer p (PLam ab (exists (a b)
                         (&& (= ab (list-of a b))
                             (< b (/ (^ a 2) 3))
                             (< -3 a)
                             (< a 3)
                             (>= b (- (* 2 a) 3))
                             (>= b (- (+ (* 2 a) 3)))))))

