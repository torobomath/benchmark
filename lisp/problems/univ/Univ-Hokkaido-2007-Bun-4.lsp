;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2007, Humanities Course, Problem 4
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-30
;;
;; <PROBLEM-TEXT>
;; Assume that the graph of the function $y = a x - b x^2$ passes
;; through the fixed point $P(p, p^2)$, where $a > 0$, $b\ge 0$, and
;; $0 < p < 1$. Let $C$ be the part of the graph that corresponds to
;; $C$.
;;
;; (1) Represent $b$ using $a$ and $p$.
;;
;; (2) When $a$ moves in the range $p\le a\le 1$, let $D$ be the region
;; in which the point $(x, y)$ on the $C$ moves.
;;
;; (i) Fix $x$, then find the range in which $y$ moves.
;;
;; (ii) Draw $D$.
;;
;; (3) Represent the area $S$ of $D$ using $S$, then find the maximum
;; and minimum values of $S$ in the range of
;; $\frac{1}{2}\le p\le\frac{3}{4}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (b)
    (exists (C F P)
      (&&
        (> a 0)
        (>= b 0)
        (< 0 p)
        (< p 1)
        (= P (point p (^ p 2)))
        (on P F)
        (= F (graph-of (poly-fun (list-of 0 a (- b)))))
        (= C (intersection
               F
               (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                                           (<= (x-coord q) p))))
               ))
      ))))

(def-answer p1 (PLam b (&&
  (> a 0)
  (>= b 0)
  (< 0 p)
  (< p 1)
  (= b (- (/ a p) 1))
)))

(def-directive
  p2_i
  (Find (y)
    (exists (C F P a b D Dp)
      (&&
        (> a 0)
        (>= b 0)
        (< 0 p)
        (< p 1)
        (= P (point p (^ p 2)))
        (on P F)
        (= F (graph-of (poly-fun (list-of 0 a (- b)))))
        (= C (intersection
               F
               (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                                           (<= (x-coord q) p))))
               ))
        (= D (shape-of-cpfun (PLam Dp (&&
                                        (on Dp C)
                                        (<= p a)
                                        (<= a 1)
                                      ))))
        (= Dp (point x y))
        (on Dp D)
      ))))

(def-answer p2_i (PLam y (&&
  (< 0 p)
  (< p 1)
  (<= (* p x) y)
  (<= y (+ (* (- 1 (/ 1 p)) (^ x 2)) x))
)))

(def-directive
  p2_ii
  (Draw (Dp)
    (&&
        (= Dp (shape-of-cpfun (PLam point (exists (C F P a b) (&&
            (> a 0)
            (>= b 0)
            (< 0 p) (< p 1)
            (<= p a) (<= a 1)
            (= P (point p (^ p 2)))
            (on P F)
            (= F (graph-of (poly-fun (list-of 0 a (- b)))))
            (= C (intersection
                   F
                   (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                                               (<= (x-coord q) p))))
                   ))
            (on point C)
        )))))
    )
  )
)

(def-answer p2_ii (shape-of-cpfun
  (PLam Dp (&&
    (< 0 p)
    (< p 1)
    (<= 0 (x-coord Dp))
    (<= (x-coord Dp) p)
    (<= (* p (x-coord Dp)) (y-coord Dp))
    (<= (y-coord Dp) (+ (* (- 1 (/ 1 p)) (^ (x-coord Dp) 2)) (x-coord Dp)))
  ))
))

(def-directive
  p3_1
  (Find (S)
    (exists (D)
      (&&
       (<= (/ 1 2) p)
       (<= p (/ 3 4))
       (= S (area-of D))
       (= D (shape-of-cpfun (PLam Dp (exists (C F P a b)
               (&&
                (> a 0)
                (>= b 0)
                (< 0 p)
                (< p 1)
                (= P (point p (^ p 2)))
                (on P F)
                (= F (graph-of (poly-fun (list-of 0 a (- b)))))
                (= C (intersection
                F
                (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                          (<= (x-coord q) p))))
                ))
                (on Dp C)
                (<= p a)
                (<= a 1)
                )
               )
          )
          )
    )
       )
      )
    )
)

(def-answer p3_1 (PLam S (&&
  (<= (/ 1 2) p)
  (<= p (/ 3 4))
  (= S (* (/ 1 6) (- (^ p 2) (^ p 3))))
)))

(def-directive
  p3_2
  (Find (S_max)
  (= S_max (max-of (PLam S
             (exists (D p)
               (&&
          (<= (/ 1 2) p)
          (<= p (/ 3 4))
          (= S (area-of D))
          (= D (shape-of-cpfun (PLam Dp (exists (C F P a b)
                        (&&
                         (> a 0)
                         (>= b 0)
                         (< 0 p)
                         (< p 1)
                         (= P (point p (^ p 2)))
                         (on P F)
                         (= F (graph-of (poly-fun (list-of 0 a (- b)))))
                         (= C (intersection
                         F
                         (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                             (<= (x-coord q) p))))
                         ))
                         (on Dp C)
                         (<= p a)
                         (<= a 1)
                         )
                        )
                   )
                   )
             )
          )
               )
             )
       )
     )
  )
)

(def-answer p3_2 (PLam S_max (= S_max (/ 2 81))))

(def-directive
  p3_3
  (Find (S_min)
  (= S_min (min-of (PLam S
             (exists (D p)
               (&&
          (<= (/ 1 2) p)
          (<= p (/ 3 4))
          (= S (area-of D))
          (= D (shape-of-cpfun (PLam Dp (exists (C F P a b)
                        (&&
                         (> a 0)
                         (>= b 0)
                         (< 0 p)
                         (< p 1)
                         (= P (point p (^ p 2)))
                         (on P F)
                         (= F (graph-of (poly-fun (list-of 0 a (- b)))))
                         (= C (intersection
                         F
                         (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                             (<= (x-coord q) p))))
                         ))
                         (on Dp C)
                         (<= p a)
                         (<= a 1)
                         )
                        )
                   )
                   )
             )
          )
               )
             )
       )
     )
  )
)

(def-answer p3_3 (PLam S_min (= S_min (/ 1 48))))

(def-directive
  p3_range_1
  (Find (S)
    (exists (D p)
      (&&
        (<= (/ 1 2) p)
        (<= p (/ 3 4))
        (= S (area-of D))
        (= D (shape-of-cpfun (PLam Dp (exists (C F P a b)
                                              (&&
                                                (> a 0)
                                                (>= b 0)
                                                (< 0 p)
                                                (< p 1)
                                                (= P (point p (^ p 2)))
                                                (on P F)
                                                (= F (graph-of (poly-fun (list-of 0 a (- b)))))
                                                (= C (intersection
                                                       F
                                                       (shape-of-cpfun (PLam q (&& (<= 0 (x-coord q))
                                                                                   (<= (x-coord q) p))))
                                                       ))
                                                (on Dp C)
                                                (<= p a)
                                                (<= a 1)
                                                )))))))))

(def-answer p3_range_1 (PLam S (&& (<= (/ 1 48) S) (<= S (/ 2 81)))))

(def-answer a1 (PLam b (&&
  (> a 0)
  (>= b 0)
  (< 0 p)
  (< p 1)
  (= b (- (/ a p) 1))
)))

(def-answer a2_1 (PLam y (&&
  (< 0 p)
  (< p 1)
  (<= (* p x) y)
  (<= y (+ (* (- 1 (/ 1 p)) (^ x 2)) x))
)))

(def-answer a2_2 (shape-of-cpfun
  (PLam Dp (&&
    (< 0 p)
    (< p 1)
    (<= 0 (x-coord Dp))
    (<= (x-coord Dp) p)
    (<= (* p (x-coord Dp)) (y-coord Dp))
    (<= (y-coord Dp) (+ (* (- 1 (/ 1 p)) (^ (x-coord Dp) 2)) (x-coord Dp)))
  ))
))

(def-answer a3_1 (PLam S (&&
  (<= (/ 1 2) p)
  (<= p (/ 3 4))
  (= S (* (/ 1 6) (- (^ p 2) (^ p 3))))
)))

(def-answer a3_2 (PLam S_maxmin (= S_maxmin (list-of (/ 2 81)
                                                     (/ 1 48)))))

