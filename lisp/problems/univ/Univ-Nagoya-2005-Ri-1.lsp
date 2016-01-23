;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2005, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-07-29
;;
;; <PROBLEM-TEXT>
;; Let $A$ and $B$ be the intersections of the parabola $R$:
;; $y = - x^2 + 3$ and the straight line $l$: $y = 2 x$. Assume that the
;; straight line $y = 2 x + t$ ( $t > 0$) intersects with the parabola
;; $R$ at different $2$ points: $C(t)$ and $D(t)$.
;;
;; (1) Find the area $T$ of the region enclosed by the parabola $R$ and
;; the straight line $l$.
;;
;; (2) Let $S(t)$ be the area of the trapezoid whose vertices are the
;; points $A$, $B$, $C(t)$, and $D(t)$, and define
;; $f(t)=\frac{S(t)}{T}$. Find the maximum value of $f(t)$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (T)
  (= T (area-of (shape-enclosed-by (list-of (graph-of (poly-fun (list-of 3 0 -1))) (graph-of (poly-fun (list-of 0 2)))))))))

(def-answer
  p1
  (PLam T(= T (/ 32 3))))

(def-directive
  p2
  (Find (ftm)
  (let* ((R (graph-of (poly-fun (list-of 3 0 -1))))
         (l (graph-of (poly-fun (list-of 0 2))))
         (T (area-of (shape-enclosed-by (list-of (graph-of (poly-fun (list-of 3 0 -1))) (graph-of (poly-fun (list-of 0 2))))))))
    (maximum (set-by-def (PLam ft
             (exists (A B C D)
               (exists (t)
                 (&& (> t 0)
               (! (= A B))
               (! (= C D))
               (intersect R l A)
               (intersect R l B)
               (intersect R (graph-of (poly-fun (list-of t 2))) C)
               (intersect R (graph-of (poly-fun (list-of t 2))) D)
               (= ft (/ (area-of (square A B C D)) T)))))))
       ftm))))

(def-answer
  p2
  (PLam ftm (= ftm (/ 8 9))))

