;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    The University of Tokyo, 2009, Humanities Course, Problem 1
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-03-12
;;
;; <PROBLEM-TEXT>
;; On the coordinate plane, let $C_1$ be the circle with the center at
;; the origin and the radius $2$, and $C_2$, the circle with the center
;; at the point $(1, 0)$ and the radius $1$. Assume that the circle
;; $C_3$ with the center at the point $(a, b)$ and the radius $t$ is
;; inscribed in $C_1$ and circumscribed to $C_2$, where $b$ is a
;; positive real number.
;;
;; (1) Represent $a$ and $b$ using $t$. Find the range of the possible
;; value of $t$.
;;
;; (2) When $t$ moves in the range found in (1), find the maximum value
;; of $b$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive a1_1
  (Find (ab)
  (exists (C1 C2 C3 a b)
    (&& (= C1 (circle (origin) 2))
        (= C2 (circle (point 1 0) 1))
        (= C3 (circle (point a b) t))
        (> b 0)
        (is-circumscribed-about C3 C2)
        (is-inscribed-in C3 C1)
        (= ab (list-of a b))))))

(def-directive
  a1_2
  (Find (t)
        (exists (C1 C2 C3 a b)
                (&& (= C1 (circle (origin) 2))
                    (= C2 (circle (point 1 0) 1))
                    (= C3 (circle (point a b) t))
                    (< 0 b)
                    (is-circumscribed-about C3 C2)
                    (is-inscribed-in C3 C1)))))

(def-directive
  a2
  (Find (M)
        (exists (b_set)
                (&& (maximum b_set M)
                    (= b_set (set-by-def (PLam b (exists (C1 C2 C3 a t)
                                                         (&& (= C1 (circle (origin) 2))
                                                             (= C2 (circle (point 1 0) 1))
                                                             (= C3 (circle (point a b) t))
                                                             (> b 0)
                                                             (is-circumscribed-about C3 C2)
                                                             (is-inscribed-in C3 C1))))))))))

(def-answer a1_1 (PLam ab (exists (ab1 ab2)
          (&& (< 0 t)
              (< t 1)
              (= ab1 (- 2 (* 3 t)))
              (= ab2 (sqrt (- (* 8 t) (* 8 (^ t 2)))))
              (= ab (list-of ab1 ab2))))))

(def-answer a1_2 (PLam t (&& (< 0 t)
                             (< t 1))))

(def-answer a2 (PLam M (= M (sqrt 2))))

