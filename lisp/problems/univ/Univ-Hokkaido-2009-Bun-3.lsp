;; DOMAIN:    Vectors
;; THEORY:    RCF
;; SOURCE:    Hokkaido University, 2009, Humanities Course, Problem 3
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2013-12-20
;;
;; <PROBLEM-TEXT>
;; For a real number $t > 0$, consider the points $P(t, 0)$,
;; $Q(2 t, 1-4 t^2)$, and $R(-t, 1-t^2)$ on the coordinate plane. Answer
;; the following questions:
;;
;; (1) Find the value of $t$ such that $P$, $Q$, and $R$ exist on a
;; straight line.
;;
;; (2) Let $t_0$ be the value found in (1). When $0 < t < t_0$, find the
;; maximum value of the area $S(t)$ of the triangle $\triangle PQR$ and
;; the value of $t$ that gives the maximum value.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (t)
    (exists (P Q R)
      (&&
        (> t 0)
        (= P (point t 0))
        (= Q (point (* 2 t) (- 1 (* 4 (^ t 2)))))
        (= R (point (- 0 t) (- 1 (^ t 2))))
        (colinear P Q R)
      ))))

(def-directive
  p2_0
  (Find (max-ls)
  (exists (S Dom t Smax)
    (&& (= max-ls (list-of Smax t))
        (func-max S Dom t Smax)
        (= S (fun (Lam t0 (area-of (triangle (point t0 0) (point (* 2 t0) (- 1 (* 4 (^ t0 2)))) (point (- 0 t0) (- 1 (^ t0 2))))))))
        (= Dom (set-by-def (PLam t0 (&& (< 0 t0) (< t0  (/ 1 (sqrt 3)))))))
        ))))

(def-answer p1 (PLam t (= t (/ 1 (sqrt 3)))))

(def-answer p2_0 (PLam max-ls (= max-ls (list-of (/ 1 3) (/ 1 3)))))

