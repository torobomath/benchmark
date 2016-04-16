;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2011, Humanities Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-18
;;
;; <PROBLEM-TEXT>
;; Let $a$ and $b$ be real numbers, and define three straight lines on
;; the $x y$ plane as $l$: $x + y = 0$, $l_1$: $a x + y = 2 a + 2$, and
;; $l_2$: $b x + y = 2 b + 2$.
;;
;; (1) The straight line $l_1$ passes through the point $P$ independent
;; of the value of $a$. Find the coordinates of $P$.
;;
;; (2) Find the condition for $a$ and $b$ such that a triangle is formed
;; by $l$, $l_1$, and $l_2$.
;;
;; (3) When $a$ and $b$ satisfy the condition found in (2), find the
;; range of the values of $a$ and $b$ such that the point $(1, 1)$
;; exists inside the triangle described in (2), and draw the range on
;; the $a b$ plane.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  a1
  (Find (P)
    (forall (a b l l1 l2)
      (->
        (&&
          (= l  (graph-of (poly-fun (list-of 0 (- 0 1)))))
          (= l1 (graph-of (poly-fun (list-of (+ (* 2 a) 2) (- 0 a)))))
          (= l2 (graph-of (poly-fun (list-of (+ (* 2 b) 2) (- 0 b)))))
        ) (&&
          (on P l1)
        )))))

(def-directive
  a2
  (Find (ab)
    (exists (a b)
      (&& (= ab (list-of a b))
        (exists (l l1 l2 P01 P12 P20)
          (&&
            (= l  (graph-of (poly-fun (list-of 0 (- 0 1)))))
            (= l1 (graph-of (poly-fun (list-of (+ (* 2 a) 2) (- 0 a)))))
            (= l2 (graph-of (poly-fun (list-of (+ (* 2 b) 2) (- 0 b)))))
            (lines-intersect-at (list-of l l1) P01)
            (lines-intersect-at (list-of l1 l2) P12)
            (lines-intersect-at (list-of l l2) P20)
            (is-triangle P01 P12 P20)
          ))))))

(def-directive
  a3_1
  (Find (ab)
    (exists (a b)
      (&& (= ab (list-of a b))
        (exists (l l1 l2 P01 P12 P20 T)
          (&&
            (= l  (graph-of (poly-fun (list-of 0 (- 0 1)))))
            (= l1 (graph-of (poly-fun (list-of (+ (* 2 a) 2) (- 0 a)))))
            (= l2 (graph-of (poly-fun (list-of (+ (* 2 b) 2) (- 0 b)))))
            (lines-intersect-at (list-of l l1) P01)
            (lines-intersect-at (list-of l1 l2) P12)
            (lines-intersect-at (list-of l l2) P20)
            (is-triangle P01 P12 P20)
            (= T (triangle P01 P12 P20))
            (point-inside-of (point 1 1) T)
          ))))))

(def-answer a1 (PLam P (= P (point 2 2))))

(def-answer a2 (PLam ab (exists (a b)
        (&& (= ab (list-of a b))
            (! (= a 1))
            (! (= b 1))
            (! (= a b))
            )
)))

(def-answer a3_1 (PLam ab (exists (a b)
        (&& (= ab (list-of a b))
            (< (* (+ a 1) (- a 1) (+ b 1) (- b 1)) 0)
         )
)))

(def-answer a3_2 (set-of-cfun (Lam a (PLam b
            (< (* (+ a 1) (- a 1) (+ b 1) (- b 1)) 0)
         ))))

