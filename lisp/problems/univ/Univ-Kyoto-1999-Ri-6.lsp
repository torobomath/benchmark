;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Kyoto University, 1999, Science Course, Problem 6
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-14
;;
;; <PROBLEM-TEXT>
;; Assume that $x$ and $y$ are given as follows using $t$ as a
;; parameter.
;; $x=\frac{3 t-t^2}{t+1}$ $y=\frac{3 t^2-t^3}{t+1}$ When the parameter
;; $t$ moves in the range $0\le t\le 3$, find the ranges in which $x$
;; and $y$ move, respectively. Find the area of the intersection of the
;; figure formed by $(x, y)$ and the region $y\ge x$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_x
  (Find (x)
    (exists (t y)
      (&&
        (= x (/ (+ (* 3 t) (- (^ t 2))) (+ t 1)))
        (= y (/ (+ (* 3 (^ t 2)) (- (^ t 3))) (+ t 1)))
        (<= 0 t)
        (<= t 3)
      )
    )
  )
)

(def-answer p1_x (PLam x (&& (<= 0 x) (<= x 1))))

(def-directive
  p1_y
  (Find (y)
    (exists (t x)
      (&&
        (= x (/ (+ (* 3 t) (- (^ t 2))) (+ t 1)))
        (= y (/ (+ (* 3 (^ t 2)) (- (^ t 3))) (+ t 1)))
        (<= 0 t)
        (<= t 3)
      )
    )
  )
)

(def-answer p1_y (PLam y (&& (<= 0 y) (<= y (- (* 6 (sqrt 3)) 9)))))

(def-directive
  p2
  (Find (S)
    (= S (area-of
          (intersection
     (shape-enclosed-by (list-of
             (set-of-cfun (Lam x (PLam y
                  (exists (t)
                    (&&
                     (= x (/ (+ (* 3 t) (- (^ t 2))) (+ t 1)))
                     (= y (/ (+ (* 3 (^ t 2)) (- (^ t 3))) (+ t 1)))
                     (<= 0 t)
                     (<= t 3)
                     )
                    ))))
             ))
            (set-of-cfun (Lam x (PLam y (>= y x)))))
    ))))

(def-answer p2 (PLam S (= S (- (/ 43 3) (* 20 (ln 2))))))

(def-answer a_1 (PLam xy (= xy (list-of
                                 (PLam x (&& (<= 0 x) (<= x 1)))
                                 (PLam y (&& (<= 0 y) (<= y (- (* 6 (sqrt 3)) 9))))))))

(def-answer a_2 (PLam S (= S (- (/ 43 3) (* 20 (ln 2))))))

