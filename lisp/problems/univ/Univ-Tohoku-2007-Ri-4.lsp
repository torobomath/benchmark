;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Tohoku University, 2007, Science Course, Problem 4
;; AUTHOR:    Tomoya Ishii
;; GENERATED: 2014-04-16
;;
;; <PROBLEM-TEXT>
;; Consider the square $K$ whose vertices are at the points $(0, 0)$,
;; $(4, 0)$, $(4, 4)$, and $(0, 4)$ on the $x y$ plane. For each
;; straight line passing through the point $(1, 2)$, let $l$ be the
;; region contained in $K$.
;;
;; (1) Find the maximum length of $l$ and the equation of the straight
;; line that gives the maximum length.
;;
;; (2) Find the minimum length of $l$.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p1_M
  (Find (M)
  (exists (K)
    (&&
     (= K (boundary-of (square (point 0 0) (point 4 0) (point 4 4) (point 0 4))))
     (maximum (set-by-def (PLam Ml (exists (ll P Q)
                   (&&
              (on (point 1 2) ll)
              (line-type ll)
              (on P ll) (on P K)
              (on Q ll) (on Q K)
              (! (= P Q))
              (= Ml (length-of (seg P Q)))
              ))))
        M)
     ))))

(def-directive
  p1_f
  (Find (f)
  (exists (K l M Po Qo a b)
    (&&
     (= K (boundary-of (square (point 0 0) (point 4 0) (point 4 4) (point 0 4))))
     (on (point 1 2) l)
     (= f (poly-fun (list-of a b)))
     (= l (graph-of f))
     (maximum (set-by-def (PLam Ml (exists (ll P Q)
                   (&&
                   (on (point 1 2) ll)
                   (line-type ll)
                   (on P ll) (on P K)
                   (on Q ll) (on Q K)
                   (! (= P Q))
                   (= Ml (length-of (seg P Q)))
                   ))))
        M)
     (on Po l) (on Po K)
     (on Qo l) (on Qo K)
     (! (= Po Qo))
     (= M (length-of (seg Po Qo)))
     ))))

(def-directive
  p2
  (Find (m)
  (exists (K)
    (&&
     (= K (boundary-of (square (point 0 0) (point 4 0) (point 4 4) (point 0 4))))
     (minimum (set-by-def (PLam Ml (exists (ll P Q)
                   (&&
              (on (point 1 2) ll)
              (line-type ll)
              (on P ll) (on P K)
              (on Q ll) (on Q K)
              (! (= P Q))
              (= Ml (length-of (seg P Q)))))))
        m)
     ))))

(def-answer p2_Range (PLam Ml (&& (<= 4 Ml)
          (<= m (/ (* 4 (sqrt 13)) 3))
          )))

(def-answer p1_M (PLam M (= M (/ (* 4 (sqrt 13)) 3))))

(def-answer p1_f (PLam f (|| (= f (poly-fun (list-of (/ 4 3) (/ 2 3)))) (= f (poly-fun (list-of (/ 8 3) (/ -2 3)))))))

(def-answer p2 (PLam m (= m 4)))

