;; DOMAIN:    Integration and its Applications
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2007, Science Course, Problem 4
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; Let $f(x)= x^3 - x$, and let $t$ be a real number. On the $xy$ plane,
;; let $C_1$ be the curve $y = f(x)$, and let $C_2$ be the curve
;; $y = f(2 t - x)$ which is symmetric to $C_1$ about the straight line
;; $x=t$.
;;
;; (1) When $C_1$ intersects with $C_2$ at three points, find the range
;; of the possible value of $t$.
;;
;; (2) When $t$ moves in the range found in (1), find the maximum value
;; of the area $S$ of the region enclosed by $C_1$ and $C_2$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (t)
        (exists (f C1 C2 p q r)
                (&& (= f (Lam x (- (^ x 3) x)))
                    (= C1 (graph-of (fun f)))
                    (= C2 (graph-of (fun (Lam x (LamApp f (- (* 2 t) x))))))
                    (! (= p q))
                    (! (= q r))
                    (! (= r p))
                    (on p (intersection C1 C2))
                    (on q (intersection C1 C2))
                    (on r (intersection C1 C2))))))

(def-answer p1 (PLam t (&& (< (/ (- 1) (sqrt 3)) t) (< t (/ 1 (sqrt 3))))))

(def-directive
  p2
  (Find (S_max)
        (exists (S_set)
          (&& (maximum S_set S_max)
        (= S_set (set-by-def (PLam S (exists (f C1 C2 p q r t)
                     (&& (= f (Lam x (- (^ x 3) x)))
                   (= C1 (graph-of (fun f)))
                   (= C2 (graph-of (fun (Lam x (LamApp f (- (* 2 t) x))))))
                   (! (= p q))
                   (! (= q r))
                   (! (= r p))
                   (on p (intersection C1 C2))
                   (on q (intersection C1 C2))
                   (on r (intersection C1 C2))
                   (= S (area-of (shape-enclosed-by (list-of C1 C2)))))))))))))

(def-answer p2 (PLam S_max (= S_max 1)))

