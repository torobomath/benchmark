;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2013, Humanities Course, Problem 4
;; AUTHOR:    Takehiro Naito
;; GENERATED: 2015-01-08
;;
;; <PROBLEM-TEXT>
;; Let $t$ be the real number that satisfies $0\le t\le 1$. Let $A$ be
;; the region enclosed by the parabola $y = x^2$, the straight line
;; $x = 1$, and the $x$ axis, and let $B$ be the region enclosed by the
;; parabola $y = 4(x - t)^2$ and the straight line $y = 1$. Let $S(t)$
;; be the area of the intersection of $A$ and $B$.
;;
;; (1) Find the value of $S(t)$.
;;
;; (2) Find the maximum value of $S(t)$ in $0\le t\le 1$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (S)
    (&& (<= 0 t) (<= t 1)
        (= S (area-of (shape-of-cpfun (char-fun-of (intersection
            (shape-enclosed-by (list-of
              (shape-of-cpfun (PLam P (= (y-coord P) (^ (x-coord P) 2))))
              (shape-of-cpfun (PLam P (= (x-coord P) 1)))
              (shape-of-cpfun (PLam P (= (y-coord P) 0)))
            ))
            (shape-enclosed-by (list-of
              (shape-of-cpfun (PLam P (= (y-coord P) (* 4 (^ (- (x-coord P) t) 2)))))
              (shape-of-cpfun (PLam P (= (y-coord P) 1)))
            ))
        )))))
    )))

(def-directive
  p2
  (Find (Smax)
    (maximum
      (set-by-def (PLam S (exists (t) (&&
        (<= 0 t) (<= t 1)
        (= S (area-of (shape-of-cpfun (char-fun-of (intersection
            (shape-enclosed-by (list-of
              (shape-of-cpfun (PLam P (= (y-coord P) (^ (x-coord P) 2))))
              (shape-of-cpfun (PLam P (= (x-coord P) 1)))
              (shape-of-cpfun (PLam P (= (y-coord P) 0)))
            ))
            (shape-enclosed-by (list-of
              (shape-of-cpfun (PLam P (= (y-coord P) (* 4 (^ (- (x-coord P) t) 2)))))
              (shape-of-cpfun (PLam P (= (y-coord P) 1)))
            ))
        )))))
      ))))
      Smax
    )))

(def-answer p1 (PLam S (||
  (&& (<= 0 t) (< t (/ 1 2)) (= S (* (/ 32 27) (^ t 3))))
  (&& (<= (/ 1 2) t) (<= t 1) (= S (+ (* (/ 32 27) (^ t 3)) (* -4 (^ t 2)) (* 4 t) -1)))
)))

(def-answer p2 (PLam Smax (= Smax (/ 1 4))))

