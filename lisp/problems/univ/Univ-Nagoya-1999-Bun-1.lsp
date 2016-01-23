;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Nagoya University, 1999, Humanities Course, Problem 1
;; AUTHOR:    Hidenao Iwane
;; GENERATED: 2014-01-12
;;
;; <PROBLEM-TEXT>
;; Answer the following questions about the curve $C$: $y = x |x - 1|$
;; and the straight line $l$: $y = k x$:
;;
;; 1) Find the range of $k$ such that $C$ and $l$ have two intersections
;; in the range of $x > 0$.
;;
;; 2) When $k$ moves in the range found in 1), find the value of $k$
;; that gives the minimum area of the whole region enclosed by $C$ and
;; $l$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1
  (Find (k)
    (exists (C l P1 P2)
      (&&
        (= C (graph-of (fun (Lam x (* x (abs (+ x (- 1))))))))
        (= l (graph-of (poly-fun (list-of 0 k))))
        (< 0 (x-coord P1))
        (< 0 (x-coord P2))
        (! (= P1 P2))
        (on P1 C)
        (on P2 C)
        (on P1 l)
        (on P2 l)
      )
    )
  )
)

(def-directive
  p2k
  (Find (k)
      (exists (C l P1 P2 S)
        (&&
          (= C (graph-of (fun (Lam x (* x (abs (+ x (- 1))))))))
          (= l (graph-of (poly-fun (list-of 0 k))))
          (< 0 (x-coord P1))
          (< 0 (x-coord P2))
          (! (= P1 P2))
          (on P1 C)
          (on P2 C)
          (on P1 l)
          (on P2 l)
          (= S (area-of (shape-enclosed-by (list-of C l))))
          (minimum (set-by-def (PLam S
                                     (exists (C l P1 P2 k)
                                             (&&
                                               (= C (graph-of (fun (Lam x (* x (abs (+ x (- 1))))))))
                                               (= l (graph-of (poly-fun (list-of 0 k))))
                                               (< 0 (x-coord P1))
                                               (< 0 (x-coord P2))
                                               (! (= P1 P2))
                                               (on P1 C)
                                               (on P2 C)
                                               (on P1 l)
                                               (on P2 l)
                                               (= S (area-of (shape-enclosed-by (list-of C l))))
                                               )
                                             )
                                     )) S))
  )
))

(def-answer p1 (PLam k (&& (< 0 k) (< k 1))))

(def-answer p2k (PLam k (= k (- 3 (* 2 (sqrt 2))))))

