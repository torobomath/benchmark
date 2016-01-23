;; DOMAIN:    Geometric Figures and Equations
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 1999, Science Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-10
;;
;; <PROBLEM-TEXT>
;; Define the straight lines $L_1$ and $L_2$ on the $x y$ plane as
;; $L_1$: $y = 0$ ( $x$ axis) and $L_2$: $y =\sqrt{3} x$. Let $P$ be a
;; point on the $x y$ plane. Let $Q$ be the point symmetric to $P$ about
;; the straight line $L_1$, and let $R$ be the point symmetric to $P$
;; about the straight line $L_2$. Answer the following questions:
;;
;; (1) Let $(a, b)$ be the coordinates of $P$, then represent the
;; coordinates of $R$ using $a$ and $b$.
;;
;; (2) Assuming that the distance between the points $Q$ and $R$ is $2$,
;; find the locus $C$ of $P$.
;;
;; (3) When the point $P$ moves on $C$, find the maximum area of the
;; triangle $PQR$ and the coordinates of $P$ that give the area.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (R)
    (exists (L2 P)
      (&&
        (= L2 (graph-of (poly-fun (list-of 0 (sqrt 3)))))
        (= P (point a b))
  (line-symmetry P R L2)
      ))))

(def-directive
  p2
  (Find (C)
    (= C (shape-of-cpfun (PLam P
      (exists (L1 L2 Q R)
        (&&
          (= L1 (graph-of (poly-fun (list-of 0))))
          (= L2 (graph-of (poly-fun (list-of 0 (sqrt 3)))))
          (line-symmetry P Q L1)
          (line-symmetry P R L2)
          (= 2 (distance Q R))
        )
      )
    )))
  )
)

(def-directive
  p3_range
  (Find (S)
    (exists (Pn Qn Rn L1n L2n C)
      (&&
        (= S (area-of (triangle Pn Qn Rn)))
        (on Pn C)
        (= L1n (graph-of (poly-fun (list-of 0))))
        (= L2n (graph-of (poly-fun (list-of 0 (sqrt 3)))))
        (line-symmetry Pn Qn L1n)
        (line-symmetry Pn Rn L2n)
        (= C (set-as-shape (set-by-def (PLam P (&&
          (exists (Q R L1 L2)
            (&&
              (= L1 (graph-of (poly-fun (list-of 0))))
              (= L2 (graph-of (poly-fun (list-of 0 (sqrt 3)))))
              (line-symmetry P Q L1)
              (line-symmetry P R L2)
              (= 2 (distance Q R))
            )
          )
        )))))
      ))))

(def-directive
  p3
  (Find (Smax) (maximum (set-by-def (PLam S
    (exists (Pn Qn Rn L1n L2n C)
      (&&
        (= S (area-of (triangle Pn Qn Rn)))
        (on Pn C)
        (= L1n (graph-of (poly-fun (list-of 0))))
        (= L2n (graph-of (poly-fun (list-of 0 (sqrt 3)))))
        (line-symmetry Pn Qn L1n)
        (line-symmetry Pn Rn L2n)
        (= C (set-as-shape (set-by-def (PLam P (&&
          (exists (Q R L1 L2)
            (&&
              (= L1 (graph-of (poly-fun (list-of 0))))
              (= L2 (graph-of (poly-fun (list-of 0 (sqrt 3)))))
              (line-symmetry P Q L1)
              (line-symmetry P R L2)
              (= 2 (distance Q R))
            )
          )
        )))))
      )))) Smax)))

(def-answer p1 (PLam R (= R (point (+ (- (* (/ 1 2) a)) (* (/ (sqrt 3) 2) b)) (+ (* (/ (sqrt 3) 2) a) (* (/ 1 2) b))))))

(def-answer p2 (PLam C (= C (2d.circle (point 0 0) (sqrt (/ 4 3))))))

(def-answer p3_range (PLam S (&& (<= 0 S) (<= S (sqrt 3)))))

(def-answer p3 (PLam S (= S (sqrt 3))))

