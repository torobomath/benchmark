;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 2012, Science Course, Problem 1
;; AUTHOR:    Ukyo Suzuki
;; GENERATED: 2014-05-07
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a positive constant.
;; The curve $C$ on the $xy$-plane has equation $y = x^3 - a^2 x$.
;; (1) Let $l$ be the tangent to $l$ at the point $A(t, t^3 - a^2 t)$.
;; Find the area $S(t)$ of the region enclosed by $l$ and $C$, where $t$ is not $0$.
;; (2) Let $b$ be a real number. How many of the tangents to $C$ pass through the point $B(2a,b)$
;; on the $xy$-plane?
;; (3) Assume that only two of the tangets $l_1$ and $l_2$ to $C$ pass through the point $B(2a,b)$ and
;; they do not pass through the origin $(0,0)$.
;; Let $S_1$ be the area of the region enclosed by $l_1$ and $C$ and $S_2$ be the area of the region
;; enclosed by $l_2$ and $C$. When $S_1 \ge S_2$, find the value of $\frac{S_1}{S_2}$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (st)
  (let* ((C (graph-of (fun (Lam x (- (^ x 3) (* (^ a 2) x)))))) (A (point t (- (^ t 3) (* (^ a 2) t)))))
    (exists (u v)
     (&& (= st (area-of (shape-enclosed-by (list-of l C))))
         (= l (line2d u 1 v))
         (tangent l C A)
         (> a 0)
         (! (= t 0)))))))

(def-answer p1 (PLam st (&&
  (> a 0)
  (! (= t 0))
  (= st (* (/ 27 4) (^ t 4)))
)))

(def-directive
  p2
  (Find (x)
  (let* ((C (graph-of (fun (Lam x (- (^ x 3) (* (^ a 2) x)))))) (B (point (* 2 a) b)))
    (= x (cardinality-of (set-by-def (PLam l
             (&& (line-type l)
                 (on B l)
                 (tangent l C)
                 (> a 0)))))))))

(def-answer p2 (PLam x (||
         (&& (< (* (- 2) (^ a 3)) b) (< b (* 6 (^ a 3))) (= x 3))
         (&& (= b (* (- 2) (^ a 3))) (= x 2))
         (&& (= b (* 6 (^ a 3))) (= x 2))
         (&& (|| (> (* (- 2) (^ a 3)) b) (> b (* 6 (^ a 3)))) (= x 1))
)))

(def-directive
  p3
  (Find (x)
  (let* ((C (graph-of (fun (Lam x (- (^ x 3) (* (^ a 2) x)))))) (B (point (* 2 a) b)))
    (forall (a b)
      (-> (&& (> a 0)
        (= 2 (cardinality-of (set-by-def (PLam l
                 (&& (line-type l)
                     (on B l)
                     (tangent l C))))))
        (forall (ls) (-> (&& (line-type ls)
                 (on B ls)
                 (tangent ls C))
             (! (on (origin) ls)))))
          (exists (l1 l2)
            (&& (line-type l1)
          (on B l1)
          (tangent l1 C)
          (line-type l2)
          (on B l2)
          (tangent l2 C)
          (>= (area-of (shape-enclosed-by (list-of l1 C))) (area-of (shape-enclosed-by (list-of l2 C))))
          (= x (/ (area-of (shape-enclosed-by (list-of l1 C))) (area-of (shape-enclosed-by (list-of l2 C))))))))))))

(def-answer p3 (PLam x (= x 16)))

