;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Kyushu University, 2005, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-21
;;
;; <PROBLEM-TEXT>
;; Let $a$ be a positive real number, and consider the point
;; $A(0, a+\frac{1}{2 a})$ and the curve $C$: $y = a x^2$ ( $x\ge 0$).
;; Let $P$ the point on the curve $C$ that is the closest to the point
;; $A$. Answer the following questions:
;;
;; (1) Find the coordinates of the point $P$ and the length of the line
;; segment $AP$.
;;
;; (2) Find the area $S(a)$ of the region enclosed by the curve $C$, the
;; $y$ axis, and the line segment $AP$.
;;
;; (3) When $a > 0$, find the minimum value of the area $S(a)$ and the
;; value of $a$ that gives the minimum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1P
  (Find (P)
  (exists (A C AP)
    (&&
      (< 0 a)
      (= A (point 0 (+ a (/ 1 (* 2 a)))))
      (= C (graph-of (fun (Lam x (* a (^ x 2))))))
      (on P C)
      (<= 0 (x-coord P))
      (= AP (length-of (seg A P)))
      (forall (Q)
        (->
          (&&
            (on Q C)
            (<= 0 (x-coord Q)))
          (<= (length-of (seg A P)) (length-of (seg A Q)))))))))

(def-directive
  p1AP
  (Find (AP)
  (exists (A C P)
    (&&
      (< 0 a)
      (= A (point 0 (+ a (/ 1 (* 2 a)))))
      (= C (graph-of (fun (Lam x (* a (^ x 2))))))
      (on P C)
      (<= 0 (x-coord P))
      (= AP (length-of (seg A P)))
      (forall (Q)
        (->
          (&&
            (on Q C)
            (<= 0 (x-coord Q)))
          (<= (length-of (seg A P)) (length-of (seg A Q)))))))))

(def-directive
  p2
  (Find (S)
  (exists (A C P)
    (&&
      (< 0 a)
      (= A (point 0 (+ a (/ 1 (* 2 a)))))
      (= C (graph-of (fun (Lam x (* a (^ x 2))))))
      (on P C)
      (<= 0 (x-coord P))
      (forall (Q)
        (->
          (&&
            (on Q C)
            (<= 0 (x-coord Q)))
          (<= (length-of (seg A P)) (length-of (seg A Q)))))
      (= S (area-of (shape-enclosed-by (list-of C (y-axis) (seg A P)))))))))

(def-directive
  p3_a
  (Find (mina)
  (exists (minA minC minP minS)
    (&&
      (< 0 mina)
      (= minA (point 0 (+ mina (/ 1 (* 2 mina)))))
      (= minC (graph-of (fun (Lam x (* mina (^ x 2))))))
      (on minP minC)
      (<= 0 (x-coord minP))
      (= minS (area-of (shape-enclosed-by (list-of minC (y-axis) (seg minA minP)))))
      (forall (Q)
        (->
          (&&
            (on Q minC)
            (<= 0 (x-coord Q)))
          (<= (length-of (seg minA minP)) (length-of (seg minA Q)))))
      (minimum (set-by-def (PLam S (exists (a A C P)
                   (&&
               (< 0 a)
               (= A (point 0 (+ a (/ 1 (* 2 a)))))
               (= C (graph-of (fun (Lam x (* a (^ x 2))))))
               (on P C)
               (<= 0 (x-coord P))
               (forall (Q)
                 (->
                   (&&
                     (on Q C)
                     (<= 0 (x-coord Q)))
                   (<= (length-of (seg A P)) (length-of (seg A Q)))))
               (= S (area-of (shape-enclosed-by (list-of C (y-axis) (seg A P))))))))) minS)))))

(def-directive
  p3_S
  (Find (minS)
  (exists (minA minC minP mina)
    (&&
      (< 0 mina)
      (= minA (point 0 (+ mina (/ 1 (* 2 mina)))))
      (= minC (graph-of (fun (Lam x (* mina (^ x 2))))))
      (on minP minC)
      (<= 0 (x-coord minP))
      (= minS (area-of (shape-enclosed-by (list-of minC (y-axis) (seg minA minP)))))
      (forall (Q)
        (->
          (&&
            (on Q minC)
            (<= 0 (x-coord Q)))
          (<= (length-of (seg minA minP)) (length-of (seg minA Q)))))
      (minimum (set-by-def (PLam S (exists (a A C P)
                   (&&
               (< 0 a)
               (= A (point 0 (+ a (/ 1 (* 2 a)))))
               (= C (graph-of (fun (Lam x (* a (^ x 2))))))
               (on P C)
               (<= 0 (x-coord P))
               (forall (Q)
                 (->
                   (&&
                     (on Q C)
                     (<= 0 (x-coord Q)))
                   (<= (length-of (seg A P)) (length-of (seg A Q)))))
               (= S (area-of (shape-enclosed-by (list-of C (y-axis) (seg A P))))))))) minS)))))

(def-answer p1P (PLam P (&& (< 0 a) (= P (point 1 a)))))

(def-answer p1AP (PLam AP (&& (< 0 a) (= AP (/ (sqrt (+ 1 (* 4 (^ a 2)))) (* 2 a))))))

(def-answer p2 (PLam S (&& (< 0 a) (= S (+ (/ (* 2 a) 3) (/ 1 (* 4 a)))))))

(def-answer p3_a (PLam mina (= mina (/ (sqrt 6) 4))))

(def-answer p3_S (PLam minS (= minS (/ (sqrt 6) 3))))

