;; DOMAIN:    Quadratic Functions
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2001, Humanities Course, Problem 1
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-05-14
;;
;; <PROBLEM-TEXT>
;; Let $R$ be the rectangle whose vertices are at the points $A(1, 0)$,
;; $B(2, 0)$, $C(2, 8)$, and $D(1, 8)$ on the coordinate plane.
;; Meanwhile, let $T(t)$ be the triangle whose vertices are at the
;; origin $O(0, 0)$, point $E(4, 0)$, and point $P(t, 8 t-2t^2)$, where
;; $0 < t < 4$.
;;
;; (1) Find the area $f(t)$ of the region common to the inside of $R$
;; and the inside of $T(t)$.
;;
;; (2) Assuming that $t$ moves in the range of $0 < t < 4$, find the
;; maximum value of $f(t)$ and the value of $t$ that gives the maximum
;; value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (f)
  (exists (A B C D R E T)
    (&&
      (= A (point 1 0))
      (= B (point 2 0))
      (= C (point 2 8))
      (= D (point 1 8))
      (= R (square A B C D))
      (= E (point 4 0))
      (< 0 t) (< t 4)
      (= T (triangle (origin) E (point t (- (* 8 t) (* 2 (^ t 2))))))
      (= f (area-of (intersection (shape-inside-of R) (shape-inside-of T))))
      ))))

(def-answer p1 (PLam f (|| (&& (< 0 t) (< t 1) (= f (* 5 t)))
         (&& (<= 1 t) (< t 2) (= f (+ (- (* 4 (^ t 2))) (* 13 t) (- 4))))
         (&& (<= 2 t) (< t 4) (= f (- 12 (* 3 t))))
         )))

(def-directive
  p2
  (Find (maxf_t)
  (exists (A B C D R E T f maxf maxt)
    (&&
      (= A (point 1 0))
      (= B (point 2 0))
      (= C (point 2 8))
      (= D (point 1 8))
      (= R (square A B C D))
      (= E (point 4 0))
      (= T (Lam t (triangle (origin) E (point t (- (* 8 t) (* 2 (^ t 2)))))))
      (= f (fun (Lam t (area-of (intersection (shape-inside-of R) (shape-inside-of (LamApp T t)))))))
      (func-max f (set-by-def (PLam t0 (&& (< 0 t0) (< t0 4)))) maxt maxf)
      (= maxf_t (list-of maxf maxt))))))

(def-answer p2 (PLam maxf_t (= maxf_t (list-of (/ 105 16) (/ 13 8)))))

