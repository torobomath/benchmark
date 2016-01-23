;; DOMAIN:    Geometric Quantities
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 2011, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-31
;;
;; <PROBLEM-TEXT>
;; Answer the following questions.
;;
;; (1) Consider the triangle $ABC$ of which the lengths of the sides
;; $AB$, $BC$, and $CA$ are $12$, $11$, and $10$, respectively. Let $D$
;; be the intersection of the bisector of $\angle A$ and the side $BC$,
;; then find the length of the line segment $AD$.
;;
;; (2) There is a box containing nine cards with a number from $1$ to
;; $9$, where different cards have different numbers. Take two cards at
;; a time, and let $X$ be the smaller number. Return the cards into the
;; box, then take two cards at a time again, and let $Y$ be the smaller
;; number. Find the probability of $X=Y$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (lenAD)
    (exists (A B C D AD)
      (&&
        (is-triangle A B C)
        (= 12 (distance A B))
        (= 11 (distance B C))
        (= 10 (distance C A))
        (= AD (line A D))
        (on D (line B C))
        (is-angle-bisector AD (angle B A C))
        (= lenAD (distance A D))
      ))))

(def-answer p1 (PLam lenAD (= lenAD (* 3 (sqrt 10)))))

