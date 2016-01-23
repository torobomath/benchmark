;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2007, Science Course, Problem 4
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-03-25
;;
;; <PROBLEM-TEXT>
;; Let $\triangle ABC$ be a triangle inscribed in a circle centered at
;; the point $O$, and let $P$, $Q$, and $R$ be the points that
;; internally divide the three sides $AB$, $BC$, and $CA$ of
;; $\triangle ABC$ in a ratio of $2:3$, respectively. When the
;; circumcenter of $\triangle PQR$ is at the point $O$, find what
;; triangle $\triangle ABC$ is.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (x)
  (exists (A B C P Q R)
    (&& (= x (triangle A B C))
        (exists (O)
          (&& (circle-type O)
        (= (center-of O) (origin))
        (is-inscribed-in O (triangle A B C))
        (divide-internally P (seg A B) 2 3)
        (divide-internally Q (seg B C) 2 3)
        (divide-internally R (seg C A) 2 3)
        (is-circumcenter-of (origin) (triangle P Q R))))))))

(def-answer p1 (PLam x (is-equilateral-triangle x)))

