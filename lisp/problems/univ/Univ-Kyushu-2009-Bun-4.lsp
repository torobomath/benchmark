;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2009, Humanities Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Assume that the tangents to the curve $y = x^2$ at the points
;; $P(a, a^2)$ and $Q(b, b^2)$ intersect with each other at the point
;; $R$, where $a < 0 < b$. Answer the following questions:
;;
;; (1) Find the coordinates of the point $R$ and the area of the
;; triangle $PRQ$.
;;
;; (2) Let $PRQS$ be the parallelogram with the line segments $PR$ and
;; $QR$ as two sides. Find the area of the region enclosed by the
;; polygonal line $PSQ$ and the curve $y = x^2$.
;;
;; (3) When $P$ and $Q$ moves satisfying $\angle PRQ = 90^{\circ}$, find
;; the minimum value of the area found in (2).
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_R
  (Find (R)
  (exists (P Q l m)
    (&&
      (on P (graph-of (fun (Lam x (^ x 2)))))
      (on Q (graph-of (fun (Lam x (^ x 2)))))
      (line-type l)
      (line-type m)
      (tangent (graph-of (fun (Lam x (^ x 2)))) l P)
      (tangent (graph-of (fun (Lam x (^ x 2)))) m Q)
      (= (x-coord P) a)
      (= (x-coord Q) b)
      (< a 0)
      (< 0 b)
      (on R l)
      (on R m)))))

(def-answer p1_R (PLam R (exists (Rx Ry)
         (&& (= R (point Rx Ry))
             (< a 0)
             (< 0 b)
             (= R (point (+ (/ a 2) (/ b 2)) (* a b)))))))

(def-directive
  p1_PRQ
  (Find (PRQ)
  (exists (P Q l m R)
    (&&
      (on P (graph-of (fun (Lam x (^ x 2)))))
      (on Q (graph-of (fun (Lam x (^ x 2)))))
      (line-type l)
      (line-type m)
      (tangent (graph-of (fun (Lam x (^ x 2)))) l P)
      (tangent (graph-of (fun (Lam x (^ x 2)))) m Q)
      (= (x-coord P) a)
      (= (x-coord Q) b)
      (< a 0)
      (< 0 b)
      (on R l)
      (on R m)
      (= PRQ (area-of (triangle P R Q)))))))

(def-answer p1_PRQ (PLam PRQ (&& (< a 0)
         (< 0 b)
               (= PRQ (* (/ 1 4) (^ (- b a) 3))))))

(def-directive
  p2
  (Find (ans)
  (exists (P Q l m R S)
    (&&
      (on P (graph-of (fun (Lam x (^ x 2)))))
      (on Q (graph-of (fun (Lam x (^ x 2)))))
      (line-type l)
      (line-type m)
      (tangent (graph-of (fun (Lam x (^ x 2)))) l P)
      (tangent (graph-of (fun (Lam x (^ x 2)))) m Q)
      (= (x-coord P) a)
      (= (x-coord Q) b)
      (< a 0)
      (< 0 b)
      (on R l)
      (on R m)
      (is-parallelogram P R Q S)
      (= ans (area-of (shape-enclosed-by (list-of (graph-of (fun (Lam x (^ x 2)))) (seg P S) (seg S Q)))))))))

(def-answer p2 (PLam ans (&& (< a 0) (< 0 b) (= ans (* (/ 1 5) (^ (- b a) 3))))))

(def-directive
  p3
  (Find (min_ans)
  (minimum (set-by-def (PLam ans
           (exists (P Q l m R S)
             (&&
               (on P (graph-of (fun (Lam x (^ x 2)))))
               (on Q (graph-of (fun (Lam x (^ x 2)))))
                                        (line-type l)
               (line-type m)
               (tangent (graph-of (fun (Lam x (^ x 2)))) l P)
               (tangent (graph-of (fun (Lam x (^ x 2)))) m Q)
               (= (x-coord P) a)
               (= (x-coord Q) b)
               (< a 0)
               (< 0 b)
               (on R l)
               (on R m)
               (is-right (angle P R Q))
               (is-parallelogram P R Q S)
               (= ans (area-of (shape-enclosed-by (list-of (graph-of (fun (Lam x (^ x 2)))) (seg P S) (seg S Q))))))))) min_ans)))

(def-answer p3 (PLam min_ans (= min_ans (/ 5 12))))

