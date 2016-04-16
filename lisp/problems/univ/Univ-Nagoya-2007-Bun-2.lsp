;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2007, Humanities Course, Problem 2
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-12
;;
;; <PROBLEM-TEXT>
;; Consider the $2$ parabolas $C$: $y =\frac{1}{2} x^2$ and $D$:
;; $y = -(x - a)^2$, where $a$ is a positive real number.
;;
;; (1) Find the tangent $l$ to $C$ at the point $P(t, \frac{1}{2} t^2)$.
;;
;; (2) When $l$ is also in contact with $D$, $l$ is called the common
;; tangent of $C$ and $D$. Find the $2$ common tangents $l_1$ and
;; $l_2$(to $C$ and $D$).
;;
;; (3) Find the area of the region enclosed by the common tangents
;; $l_1$, $l_2$, and $C$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  a1
  (Find (l)
  (let* ((C (graph-of (poly-fun (list-of 0 0 (/ 1 2))))))
    (&& (line-type l)
        (tangent C l (point t (* (/ 1 2) (^ t 2))))))))

(def-answer
  a1
  (PLam l (= l (graph-of (poly-fun (list-of (- (* (/ 1 2) (^ t 2))) t))))))

(def-directive
  p2
  (Find (ls)
  (let* ((C (graph-of (poly-fun (list-of 0 0 (/ 1 2)))))
         (D (graph-of (poly-fun (list-of (- (^ a 2)) (* 2 a) (- 1)))))
         )
    (exists (l1 l1c l1m)
      (&& (= ls (list-of l1c l1m))
          (= l1 (graph-of (poly-fun (list-of l1c l1m))))
          (> a 0)
          (exists (P2) (tangent C l1 P2))
          (exists (P2) (tangent D l1 P2))
          )))))

(def-answer
  p2
  (PLam ls (&& (> a 0)
      (|| (= ls (list-of 0 0))
      (= ls (list-of (- (* (/ 8 9) (^ a 2))) (* (/ 4 3) a)))
      ))))

(def-answer
  a2
  (PLam l1_l2 (&& (> a 0)
                  (= l1_l2 (list-of (x-axis)
                                    (graph-of (poly-fun (list-of (- (* (/ 8 9) (^ a 2))) (* (/ 4 3) a)))))))))

(def-directive
  p2s
  (Show
   (let* ((C (graph-of (poly-fun (list-of 0 0 (/ 1 2)))))
    (D (graph-of (poly-fun (list-of (- (^ a 2)) (* 2 a) (- 1)))))
    )
    (forall (l1 l2 a)
      (->
       (&& (= l1 (graph-of (poly-fun (list-of 0))))
           (= l2 (graph-of (poly-fun (list-of (* (/ -8 9) (^ a 2)) (* (/ 4 3) a)))))
           (> a 0)
           )
       (&&
        (exists (P2) (tangent C l1 P2))
        (exists (P2) (tangent D l1 P2))
        (exists (P2) (tangent C l2 P2))
        (exists (P2) (tangent D l2 P2))))))))

(def-directive
  a3
  (Find (ans)
  (let* ((C (graph-of (poly-fun (list-of 0 0 (/ 1 2)))))
         (D (graph-of (poly-fun (list-of (- (^ a 2)) (* 2 a) (- 1)))))
         )
    (exists (l1 l2 l1m l1c l2m l2c)
      (&& (> a 0)
          (! (= l1 l2))
          (= l1 (graph-of (poly-fun (list-of l1c l1m))))
                      (= l2 (graph-of (poly-fun (list-of l2c l2m))))
          (exists (P2) (tangent C l1 P2))
          (exists (P2) (tangent D l1 P2))
          (exists (P2) (tangent C l2 P2))
          (exists (P2) (tangent D l2 P2))
          (= ans (area-of (shape-enclosed-by (list-of C l1 l2)))))))))

(def-answer
  a3
  (PLam ans (= ans (* (/ 8 81) (^ a 3)))))

