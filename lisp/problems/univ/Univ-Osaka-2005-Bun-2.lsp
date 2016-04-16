;; DOMAIN:    Functions and their Graphs
;; THEORY:    RCF
;; SOURCE:    Osaka University, 2005, Humanities Course, Problem 2
;; AUTHOR:    Yiyang Zhan
;; GENERATED: 2014-05-02
;;
;; <PROBLEM-TEXT>
;; Let $f(x)= 2 x^3 + x^2 - 3$.
;;
;; (1) Make an increase/decrease table of the function $f(x)$ and draw a
;; rough graph of $y = f(x)$.
;;
;; (2) Find the range of the real number $m$ such that the straight line
;; $y = m x$ intersects with the curve $y = f(x)$ at different three
;; points.
;; </PROBLEM-TEXT>

(namespace 2d)

(def-directive
  p2
  (Find (m)
        (exists (f l C p q r)
                (&& (= f (poly-fun (list-of -3 0 1 2)))
                    (= l (graph-of (fun (Lam x (* m x)))))
                    (= C (graph-of f))
                    (pairwise-distinct (list-of p q r))
                    (on p (intersection l C))
                    (on q (intersection l C))
                    (on r (intersection l C))))))

(def-answer p2 (PLam m (> m 4)))

(def-answer a1_1 (PLam table (false)))

(def-answer a1_2 (graph-of (poly-fun (list-of -3 0 1 2))))

(def-answer a2 (PLam m (> m 4)))

